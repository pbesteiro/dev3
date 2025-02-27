﻿using System;
using System.IO;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web;
using CruceroDelNorte.Negocio;

namespace CruceroDelNorte
{
    public partial class _Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ///GoogleSheetManage manage = new GoogleSheetManage();
            //manage.AddRowToConsultFormSheet("nombre", "tel", "email");
           
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static DevPlaceSection GetHtmlMenu(string param)
        {
            DevPlaceSection sections = new DevPlaceSection();
            StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("templates/menu.txt"));
            sections.Menu= file.ReadToEnd();
            file.Close();
            file.Dispose();

            file = new StreamReader(HttpContext.Current.Server.MapPath("templates/footer.txt"));
            sections.Footer = file.ReadToEnd();
            file.Close();
            file.Dispose();

            return sections;
        }


    }
}
