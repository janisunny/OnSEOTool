using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace SEOtool
{
    public partial class frm_robots : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnurl_Click(object sender, EventArgs e)
        {
            penalrobot.Visible = true;
            WebClient webClient = new WebClient();
            try
            {
                var result = webClient.DownloadData(chklink(txturl.Text.Trim()) + "/robots.txt");
                prun.Attributes["class"] = "glyphicon glyphicon-ok";
                penalrobot.Attributes["class"] = "panel panel-success";
                lblrobots.Text = "<h4> Robots.txt Found!</h4><br/>";
                lblrobots.Text += "<a target='_blank' href='" + chklink( txturl.Text) + "/robots.txt'> Click here to open Robots.txt </a>";
            }
            catch 
            {
                prun.Attributes["class"] = "glyphicon glyphicon-remove";
                penalrobot.Attributes["class"] = "panel panel-danger";
                lblrobots.Text = "<h4> Robots.txt not Found!</h4>";
            }
        }

        String chklink(String link)
        {
            link = link.Replace("http://", "");
            link = link.Replace("https://", "");
            link = link.Replace("www.", "");
            var pos = link.IndexOf("/");
            link = link.Substring(0, pos);
            link = "http://" + link;
            return link;
        }
    }
}