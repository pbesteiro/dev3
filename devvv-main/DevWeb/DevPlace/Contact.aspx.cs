using System;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;

namespace CruceroDelNorte
{
   
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetHtmlMenu(string param)
        {
            StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("templates/menu.txt"));
            return file.ReadToEnd();
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static void enviarMail(string nombre, string email, string comentarios, string curso, int cursoId,
            string horario, int horarioId, int formaPagoId, string formaPago, int trabajoExpId, string trabajoExp, int estudiosId, string estudios, string nro_cupon)
        {

            try
            {
                try
                {
                    string body = "<br /><b>Contacto desde pagina Dev Place</b> <br /><br />";
                    body = body + "<b>Se contacta por:</b> " + curso + " para el curso de " + horario + " <br />";
                    body = body + "<b>Mail:</b> " + email + "<br /> ";
                    body = body + "<b>Nombre:</b> " + nombre + "<br /> ";
                    body = body + "<b>Experiencia labroal:</b> " + trabajoExp + "<br /> ";
                    body = body + "<b>Estudios:</b> " + estudios + "<br /> ";
                    body = body + "<b>Forma de Pago:</b> " + formaPago + "<br /> ";
                    body = body + "<b>Comentario:</b> " + comentarios + "<br /> ";
                    body = body + "<b>Nro Cupón:</b> " + nro_cupon + "<br /> ";

                    Cartero cartero = new Cartero("aplicantes@devplace.com.ar", body, "Contacto desde Pagina Dev Place", "info@devplace.com.ar", "", "", "aplicantes@devplace.com.ar", "4pl1c4nt3s!");
                    cartero.sendMailExterno();
                }
                catch(Exception emailEx)
                {
                    SqlConnection connEx = new SqlConnection();
                    connEx.ConnectionString = "Server=P3NWPLSK12SQL-v11.shr.prod.phx3.secureserver.net;Database=devplace;User Id=devAdmin;Password=27_mb9Ve;";
                    connEx.Open();

                    using (SqlCommand command = new SqlCommand())
                    {
                        command.CommandType = CommandType.Text;
                        command.Connection = connEx;

                        string sql = "insert into applicantErrorLog ( Description,Exception,Datetime) ";
                        sql = sql + " values ('Error al enviar el email','" + emailEx.Message + "',getdate());";

                        command.CommandText = sql;
                        command.ExecuteNonQuery();
                    }

                }


                
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Server=P3NWPLSK12SQL-v11.shr.prod.phx3.secureserver.net;Database=devplace;User Id=devAdmin;Password=27_mb9Ve;";
                conn.Open();

                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.Connection = conn;

                    string sql = "insert into Applicant ( Name,Email,TechnologyId,CurseItemId,StudyExperienceId,WorkExperienceId,Comments,nro_cupon) ";
                    sql = sql + " values ('" + nombre + "','" + email + "'," + cursoId + "," + horarioId + "," + estudiosId + "," + trabajoExpId + ",'" + comentarios + "',"+nro_cupon+");";

                    command.CommandText = sql;
                    command.ExecuteNonQuery();

                }
                
               



            }
            catch (Exception ex)
            {
                string mesg = ex.Message;
                if (ex.InnerException != null)
                {
                    if (ex.InnerException.Message != null)
                    {
                        mesg = mesg + "--" + ex.InnerException.Message;
                    }
                }
                throw new Exception(mesg);
            }
            finally
            {

            }

        }




      

    }
}