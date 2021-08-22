using System;
using System.IO;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using CruceroDelNorte.Negocio;

namespace CruceroDelNorte
{
    public partial class Figma : System.Web.UI.Page
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
            sections.CursesItems = dm.GetItemCursesTemplate((int)EnumTechnology.FIGMA);
            sections.CurseFees = dm.GetItemCurseFeesTemplate((int)EnumTechnology.FIGMA);
            sections.ContactModal = dm.GetContactTemplate((int)EnumTechnology.FIGMA);



            return sections;
        }



        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static bool SendContactEmail(string name, string email, string tel)
        {

            Persistor per = new Persistor();
            try
            {
                try
                {
                    string body = "<br /><b>Contacto desde el formulario de contacto Dev Place </b> <br /><br />";
                    body = body + "<b>Se contacta por: </b> FIGMA<br /> ";
                    body = body + "<b>Mail:</b> " + email + "<br /> ";
                    body = body + "<b>telefono:</b> " + tel + "<br /> ";
                    body = body + "<b>Nombre:</b> " + name + "<br /> ";

                    Cartero cartero = new Cartero("aplicantes@devplace.com.ar", body, "Consulta desde Formulario Contacto Dev Place", "info@devplace.com.ar", "", "", "aplicantes@devplace.com.ar", "4pl1c4nt3s!");
                    cartero.sendMailExterno();
                }
                catch (Exception emailEx)
                {
                    per.InertLog(emailEx.Message, "Error al mandar el email");

                }

                try
                {
                    Applicant applicant = new Applicant();
                    applicant.Email = email;
                    applicant.FirstName = name;
                    applicant.Telephone = tel;
                    per.SaveApplicant(applicant);
                }
                catch (Exception bdEx)
                {
                    per.InertLog(bdEx.Message, "Error al persistir el aplicante");

                }

                return true;

            }
            catch (Exception ex)
            {
                per.InertLog(ex.Message, "Error en el metodo");
                throw new Exception("Error al persistir el aplicante");
            }
            finally
            {
                per = null;
            }

        }

    }
}