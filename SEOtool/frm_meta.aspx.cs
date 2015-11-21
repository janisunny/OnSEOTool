using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;


namespace SEOtool
{
    public partial class frm_meta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if (!IsPostBack)
            
        }

        protected void btnurl_Click(object sender, EventArgs e)
        {
            try
            {
                var getHtmlWeb = new HtmlWeb();
                var document = getHtmlWeb.Load(chklink(txturl.Text.Trim()));
                
                var metaTags = document.DocumentNode.SelectNodes("//meta");
                string temp=null;
                penaldesc.Visible = true;
                penalkey.Visible = true;

                foreach (var node in metaTags)
                {
                    if (node.Attributes["name"] != null && node.Attributes["content"] != null)
                    {
                        if (node.Attributes["name"].Value == "description")
                        {
                            lblmetadesc.Text = node.InnerHtml + "\t" + node.Attributes["content"].Value + "\t" + "<br />";
                            temp = node.Attributes["content"].Value;
                        }
                    }
                }
                
                if(temp==null)
                {
                    penaldesc.Attributes["class"] = "panel panel-danger";
                    lblmetadesc.Text = "Sorry, No Meta Description is Found!";
                }
                temp = null;
                foreach (var node in metaTags)
                {
                    if (node.Attributes["name"] != null && node.Attributes["content"] != null)
                    {
                        if (node.Attributes["name"].Value == "keywords")
                        {

                            lblkeyoword.Text = node.InnerHtml + "\t" + node.Attributes["content"].Value + "\t" + "<br />";
                            temp = node.Attributes["content"].Value;
                        }
                    }
                }

                if (temp == null)
                {
                    penalkey.Attributes["class"] = "panel panel-danger";
                    lblkeyoword.Text = "Sorry, No Meta Keywords are Found!";
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
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