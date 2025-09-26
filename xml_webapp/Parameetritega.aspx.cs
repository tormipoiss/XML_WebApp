using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Xsl;
using static System.Net.Mime.MediaTypeNames;

namespace xml_webapp
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		protected void Page_Load_3(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                var args = new System.Xml.Xsl.XsltArgumentList();
                args.AddParam("tervitus", "", "Tere, siin on XSL leht");
                args.AddParam("praeguneAasta", "", 2025);
                parameetritega2.TransformArgumentList = args;
                parameetritega2.DataBind();
            }
        }
        protected void btnApply_Click(object sender, EventArgs e)
        {
            int minY, maxY;
            int.TryParse(Request.Form["vähimSünniaasta"], out minY);
            int.TryParse(Request.Form["suurimSünniaasta"], out maxY);

            var args = new System.Xml.Xsl.XsltArgumentList();
            args.AddParam("tervitus", "", "Tere, siin on XSL leht");
            args.AddParam("praeguneAasta", "", 2025);
            args.AddParam("vähimSünniaasta", "", minY);
            args.AddParam("suurimSünniaasta", "", maxY);

            parameetritega2.TransformArgumentList = args;
            parameetritega2.DataBind();
        }
    }
}