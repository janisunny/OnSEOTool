using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
namespace SEOtool
{
    public partial class frmtitle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnurl_Click(object sender, EventArgs e)
        {

            try
            {
                var getHtmlWeb = new HtmlWeb();
                var document = getHtmlWeb.Load(chklink(txturl.Text.Trim()));
                string title = "";
                int leng = 0;
                penaltitle.Visible = true;
                var TitleTeg = document.DocumentNode.SelectNodes("//title");

                if (TitleTeg != null)
                {
                    foreach (var TTag in TitleTeg)
                    {
                        penaltitle.Attributes["class"] = "panel panel-success";
                        lbltitle.Text = TTag.InnerHtml + "\t" + "<br />";
                        title = TTag.InnerHtml;
                        leng = title.Length;
                    }
                }
                else
                {
                    penaltitle.Attributes["class"] = "panel panel-danger";
                    lbltitle.Text = "Sorry, no Title tag found!";
                }
                if (leng <= 50 && leng > 0)
                {
                    prun.Attributes["class"] = "glyphicon glyphicon-ok";
                    lblres.Text = "Your Title Tag is Valid";
                }
                else
                {
                    prun.Attributes["class"] = "glyphicon glyphicon-remove";
                    lblres.Text = "Your Title is not Valid";
                }
            }
            catch (Exception ei)
            {
                Response.Write(ei);
            }
        }

        String chklink(String link)
        {
            if (link.IndexOf("http") != -1)
                return link;
            else if (link.IndexOf("https") != -1)
                return link;
            else
                link = "http://" + link;
            return link;
        }
    }
}