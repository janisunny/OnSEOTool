using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.Data;
namespace SEOtool
{
    public partial class frm_img : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

            }
        }

        protected void btnurl_Click(object sender, EventArgs e)
        {

            String url = chklink(txturl.Text);
            DataTable dt = new DataTable();
            dt.Columns.Add("alt");
            dt.Columns.Add("link");
            dt.Columns.Add("size");
            dt.Columns.Add("class");
            int i = 0, count;
            try
            {
                var getHtmlWeb = new HtmlWeb();
                var document = getHtmlWeb.Load(url);

                var imgtag = document.DocumentNode.SelectNodes("//img");

                if (imgtag != null)
                {
                    foreach (var altTag in imgtag)
                    {

                        if (altTag.Attributes["alt"] != null && CountWords(altTag.Attributes["alt"].Value) != 0)
                        {
                            if (altTag.Attributes["src"] != null)
                            {
                                dt.Rows.Add();
                                dt.Rows[i]["alt"] = altTag.Attributes["alt"].Value;
                                count = CountWords(dt.Rows[i]["alt"].ToString());
                                dt.Rows[i]["size"] = count.ToString();

                                if (count <= 17)
                                {
                                    dt.Rows[i]["class"] = "glyphicon glyphicon-ok";
                                }
                                else
                                {
                                    dt.Rows[i]["size"] = count + " - Cheack your World Length!";
                                    dt.Rows[i]["class"] = "glyphicon glyphicon-remove";
                                }
                                if (chkimg(altTag.Attributes["src"].Value))
                                    dt.Rows[i]["link"] = altTag.Attributes["src"].Value;
                                else
                                    dt.Rows[i]["link"] = chklink(txturl.Text) + "/" + altTag.Attributes["src"].Value;

                                i++;
                            }
                            else
                            {
                                dt.Rows.Add();
                                dt.Rows[i]["alt"] = altTag.Attributes["alt"].Value;
                                count = CountWords(dt.Rows[i]["alt"].ToString());
                                dt.Rows[i]["size"] = count.ToString();
                                dt.Rows[i]["link"] = "~/images/no_image_available.png";
                            }
                        }
                        else
                        {
                            dt.Rows.Add();
                            dt.Rows[i]["alt"] = "No alt attribute Found";
                            dt.Rows[i]["size"] = "0";
                            dt.Rows[i]["class"] = "glyphicon glyphicon-remove";
                            if (altTag.Attributes["src"] != null)
                            {
                                if (chkimg(altTag.Attributes["src"].Value))
                                    dt.Rows[i]["link"] = altTag.Attributes["src"].Value;
                                else
                                    dt.Rows[i]["link"] = chklink(txturl.Text) + "/" + altTag.Attributes["src"].Value;
                            }
                            else
                                dt.Rows[i]["link"] = "~/images/no_image_available.png";
                            i++;
                        }
                    }
                }
                rptimg.DataSource = dt;
                rptimg.DataBind();
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

        bool chkimg(string link)
        {
            if (link.IndexOf("http") != -1)
                return true;
            else if (link.IndexOf("https") != -1)
                return true;
            else
                link = "http://" + link;
            return false;
        }

        public static int CountWords(string s)
        {
            int c = 0;
            for (int i = 1; i < s.Length; i++)
            {
                if (char.IsWhiteSpace(s[i - 1]) == true)
                {
                    if (char.IsLetterOrDigit(s[i]) == true ||
                        char.IsPunctuation(s[i]))
                    {
                        c++;
                    }
                }
            }
            if (s.Length > 2)
            {
                c++;
            }
            return c;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}