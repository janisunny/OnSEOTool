using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using HtmlAgilityPack;

namespace SEOtool
{
    public partial class frm_links : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        String chkurl(String link)
        {
            if (link.IndexOf("http") != -1)
                return link;
            else if (link.IndexOf("https") != -1)
                return link;
            else
                link = "http://" + link;
            return link;
        }

        string link_simp(string lnk)
        {
            lnk = lnk.Replace("http://", "");
            lnk = lnk.Replace("https://", "");
            lnk = lnk.Replace("www.", "");
            return lnk;
        }

        void chklink(string link, string url,string innerhtml)
        {
            string lnk = link_simp(link);
            url = link_simp(url);
            if (lnk.IndexOf(url) != -1)
            {
                lblin.Text +="►  " + innerhtml + " - " + link + "<br/>";
            }
            else
            {
                if (link.IndexOf(@"www") != -1 || link.IndexOf(@"http") != -1 || link.IndexOf(@"https") != -1)
                    lblex.Text += "►  " + innerhtml + " - " + link + "<br/>";
            }
        }

        protected void btnurl_Click(object sender, EventArgs e)
        {

            String url = chkurl(txturl.Text);
            lblex.Text = null;
            lblin.Text = null;
            try
            {
                var getHtmlWeb = new HtmlWeb();
                var document = getHtmlWeb.Load(chkurl(txturl.Text.Trim()));
                var aTags = document.DocumentNode.SelectNodes("//a");

                // lbllinks.Text = "";
                int counter = 1;
                if (aTags != null)
                {
                    foreach (var aTag in aTags)
                    {
                        if (aTag.Attributes["href"] != null)
                        {
                            // lbllinks.Text += counter + ". " + aTag.InnerHtml + " - " + aTag.Attributes["href"].Value + "\t" + "<br />";
                            counter++;
                            chklink(aTag.Attributes["href"].Value, txturl.Text,aTag.InnerHtml);
                        }
                        else
                        {
                            //lbllinks.Text += counter + ". " + "Unable to Determine Text";// " - " + aTag.Attributes["href"].Value + "\t" + "<br />";
                            counter++;
                        }
                    }
                }
            }
            catch (Exception ei)
            {
                Response.Write(ei);
            }
        }
    }
}