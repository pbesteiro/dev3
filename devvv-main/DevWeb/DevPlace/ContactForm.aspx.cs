using System;
using System.IO;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using CruceroDelNorte.Negocio;

namespace CruceroDelNorte
{
    public partial class ContactForm : System.Web.UI.Page
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


            return sections;
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static ContactFormData GetAdicionalData(int curseItem)
        {
            ContactFormData form = new ContactFormData();
            Persistor per = new Persistor();
            CurseItem item = per.GetCurseItem(curseItem);

            DataManagment dm = new DataManagment();

            form.Provinces = dm.getProvinces();
            form.knowUsBy = dm.getContactedBy();
            form.Curse = "<option value='" + item.Id + "' >" + item.Name + "</option>";
            form.Fee = dm.GetItemCurseFeesCombo(item.TechnologyId);
            return form;
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static ContactFormData GetCurseItemInfo(int curseItemId)
        {
            ContactFormData form = new ContactFormData();

            DataManagment dm = new DataManagment();
            form.Provinces = dm.getProvinces();

            return form;
        }



        [WebMethod]
        public static void enviarMail(string nombre, string apellido, string email, string dni, string telefono, string fecNac, string curso,
                                        int cursoId, string province, int provinceId, string formaPago, int formaPagoId, string trabajo, int trabajoId,
                                        string puesto, string area, string empresa, string nivelEducativo, int nivelEducativoId, string buscaTrabajo, int buscaTrabajoId,
                                        string realizoCursos, int realizoCursosId, string cursoRealizado, string formaConocernos, int formaConocernosId, string cantPagos)
        {
            Persistor per = new Persistor();
            try
            {
                try
                {
                    string body = "<br /><b>Contacto desde pagina Dev Place</b> <br /><br />";
                    body = body + "<b>Se contacta por:</b> " + curso;
                    body = body + "<b>Mail:</b> " + email + "<br /> ";
                    body = body + "<b>telefono:</b> " + telefono + "<br /> ";
                    body = body + "<b>Nombre:</b> " + nombre + "<br /> ";
                    body = body + "<b>Apellido:</b> " + apellido + "<br /> ";
                    body = body + "<b>Provincia:</b> " + province + "<br /> ";
                    body = body + "<b>Dni:</b> " + dni + "<br /> ";
                    //body = body + "<b>Experiencia labroal:</b> " + trabajo + "<br /> ";
                    //body = body + "<b>Estudios:</b> " + nivelEducativo + "<br /> ";
                    body = body + "<b>Forma de Pago:</b> " + formaPago + "<br /> ";
                    body = body + "<b>Cantidad de Pagos:</b> " + cantPagos + "<br /> ";
                    body = body + "<b>Forma de Conocernos:</b> " + formaConocernos + "<br /> ";



                    Cartero cartero = new Cartero("aplicantes@devplace.com.ar", body, "Contacto desde Pagina Dev Place", "info@devplace.com.ar", "", "", "aplicantes@devplace.com.ar", "4pl1c4nt3s!");
                    cartero.sendMailExterno();
                }
                catch (Exception emailEx)
                {
                    per.InertLog(emailEx.Message, "Error al mandar el email");

                }

                try
                {
                    Applicant applicant = new Applicant();
                    applicant.ApplyContactedId = formaConocernosId;
                    applicant.Area = area;
                    applicant.BirthDate = MisFunciones.armarFecha(fecNac);
                    applicant.Company = empresa;
                    applicant.CurseItemId = cursoId;
                    applicant.CursoRealizado = cursoRealizado;
                    applicant.Dni = dni;
                    applicant.EducaionLevel = nivelEducativo;
                    applicant.Email = email;
                    applicant.FirstName = nombre;
                    applicant.Job = puesto;
                    applicant.LastName = apellido;
                    applicant.LookingJob = buscaTrabajoId;
                    applicant.MadeCurse = realizoCursosId;
                    applicant.PaymentType = formaPagoId;
                    applicant.ProvinceId = provinceId;
                    applicant.Telephone = telefono;
                    applicant.Working = trabajoId;



                    per.SaveApplicant(applicant);
                }
                catch (Exception bdEx)
                {
                    per.InertLog(bdEx.Message, "Error al persistir el aplicante");

                }
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