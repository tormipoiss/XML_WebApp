using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Xsl;

namespace xml_webapp
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		protected void Page_Load_5(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                // Lae leht esmakordselt ilma parameetriteta
                TransformXml(null);
            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            // Loo argumentide list XSLT parameetrite jaoks
            XsltArgumentList args = new XsltArgumentList();

            // Hangi väärtused tekstikastidest
            string symbol = TextBoxSymbol.Text;
            string length = TextBoxLength.Text;

            // Lisa parameetrid listi (kui lahter on tühi, edastatakse tühi string)
            args.AddParam("otsitavSymbol", "", symbol ?? "");
            args.AddParam("otsitavPikkus", "", length ?? "");

            // Teosta transformatsioon koos argumentidega
            TransformXml(args);
        }

        private void TransformXml(XsltArgumentList args)
        {
            elizabeth1.DocumentSource = "~/Elizabeth_ii_sugupuu/elizabeth_ii_sugupuu.xml";
            elizabeth1.TransformSource = "~/Elizabeth_ii_sugupuu/elizabeth-ii-sugupuu.xsl";

            // Kui argumendid on olemas, lisa need transformatsioonile
            if (args != null)
            {
                elizabeth1.TransformArgumentList = args;
            }
        }
    }
}