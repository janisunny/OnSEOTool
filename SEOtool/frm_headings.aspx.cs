using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;

namespace SEOtool
{
    public partial class frm_headings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnurl_Click(object sender, EventArgs e)
        {
            var getHtmlWeb = new HtmlWeb();
            var document = getHtmlWeb.Load(chklink(txturl.Text));
            int temp = 0,flag=1;
            lblheadings.Text = null;
            var HeadingTag = document.DocumentNode.SelectNodes("//h1");
            penalheading.Visible = true;
            for (int i = 1; i < 7; i++)
            {

                HeadingTag = document.DocumentNode.SelectNodes("//h" + i);
                if (HeadingTag != null)
                {
                    foreach (var TTag in HeadingTag)
                        temp++;
                }
                switch (i)
                {
                    case 1:
                        lblh1.Text = temp.ToString();
                        if (temp == 0)
                        {
                            btnh1.Enabled = false;
                            flag = 0;
                        }
                        break;
                    case 2:
                        lblh2.Text = temp.ToString();
                        if (temp == 0)
                            btnh2.Enabled = false;
                        break;
                    case 3:
                        lblh3.Text = temp.ToString();
                        if (temp == 0)
                            btnh3.Enabled = false;
                        break;
                    case 4:
                        lblh4.Text = temp.ToString();
                        if (temp == 0)
                            btnh4.Enabled = false;
                        break;
                    case 5:
                        lblh5.Text = temp.ToString();
                        if (temp == 0)
                            btnh5.Enabled = false;
                        break;
                    case 6:
                        lblh6.Text = temp.ToString();
                        if (temp == 0)
                            btnh6.Enabled = false;
                        break;
                    default:
                        break;
                }
                temp = 0;
            }
            if (flag == 0)
            {
                prun.Attributes["class"] = "glyphicon glyphicon-remove";
                lblres.Text = "Your Webpage Heading Tegs are not optimized!";
            }
            else
            {
                prun.Attributes["class"] = "glyphicon glyphicon-ok";
                lblres.Text = "Your Webpage Heading Tegs are optimized!";
            }
        }

        protected void btnh1_Click(object sender, EventArgs e)
        {
            getheadings(1);
        }

        void getheadings(int i)
        {

            var getHtmlWeb = new HtmlWeb();
            var document = getHtmlWeb.Load(chklink(txturl.Text));
            lblheadings.Text = null;

            lblheadings.Text += "<hr/><h3><b>H" + i + " tags are...</b></h3><br />";
            var HeadingTag = document.DocumentNode.SelectNodes("//h" + i);
            if (HeadingTag != null)
            {
                foreach (var TTag in HeadingTag)
                {
                    lblheadings.Text += "<H" + i + ">\t" + TTag.InnerHtml + "\t";
                }
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

        protected void btnh2_Click(object sender, EventArgs e)
        {
            getheadings(2);
        }

        protected void btnh3_Click(object sender, EventArgs e)
        {
            getheadings(3);
        }

        protected void btnh4_Click(object sender, EventArgs e)
        {
            getheadings(4);
        }

        protected void btnh5_Click(object sender, EventArgs e)
        {
            getheadings(5);
        }

        protected void btnh6_Click(object sender, EventArgs e)
        {
            getheadings(6);
        }
    }
}