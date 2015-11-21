using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.Net;
using System.IO;
namespace SEOtool
{
    public partial class frm_Whois : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnurl_Click(object sender, EventArgs e)
        {
            try
            {
                int start_pos = 0, end_pos = 0;
                penalwho.Visible = true;
                string link = "www.whois.com/whois/" + chklink(txturl.Text.Trim());
                WebRequest req = HttpWebRequest.Create(link);
                req.Method = "GET";

                string str;
                using (StreamReader reader = new StreamReader(req.GetResponse().GetResponseStream()))
                {
                    str = reader.ReadToEnd();
                }
                //string link = "www.whois.com/whois/" + chklink(txturl.Text.Trim());
                //string str = client.DownloadString(link);
                start_pos = str.IndexOf("registrarData");
                start_pos += 2;
                end_pos = str.IndexOf("<<<", start_pos);
                lblwhois.Text = str.Substring(start_pos, end_pos - start_pos);
            }
            catch(Exception ei)
            {
                Response.Write(ei.Message);
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