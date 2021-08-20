using CruceroDelNorte.Negocio;
using System;
using System.IO;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;


namespace CruceroDelNorte
{
    public partial class js_basico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static DevPlaceSection GetHtmlMenu(string param)
        {
            DevPlaceSection sections = new DevPlaceSection();
            StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("templates/menu.txt"));
            sections.Menu = file.ReadToEnd();
            file.Close();
            file.Dispose();

            file = new StreamReader(HttpContext.Current.Server.MapPath("templates/footer.txt"));
            sections.Footer = file.ReadToEnd();
            file.Close();
            file.Dispose();

            DataManagment dm = new DataManagment();
            sections.CursesItems = dm.GetItemCursesTemplate((int)EnumTechnology.JS_BASICO);
            sections.CurseFees = dm.GetItemCurseFeesTemplate((int)EnumTechnology.JS_BASICO);

            return sections;
        }



        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetFormAplica(string param)
        {
            DevPlaceSection sections = new DevPlaceSection();
            StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("templates/form-aplica.txt"));
            string form = file.ReadToEnd();
            file.Close();
            file.Dispose();

            return form;
        }

    }
}