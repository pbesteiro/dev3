using System;
using System.Collections.Generic;
using System.Text;
using System.Net.Mail;
using System.Threading;
using System.Configuration;
using System.IO;




    public class Cartero
    {
        private string mailTo;
        private string body;
        private string subject;
        private string mailFrom;
        private string cco; //Copia oculta
        private string cc;  //Copia
        //private List<string> attachments;
        private string user;
        private string pass;
      

    

        public Cartero(string xMail, string body, string subject, string mailFrom, string CCO, string CC, string user, string pass)//mi propio constructor
        {
            this.mailTo = xMail;
            this.body = body;
            this.subject = subject;
            this.mailFrom = mailFrom;
            this.cco = CCO;
            this.cc = CC;
            //this.attachments = null;
            this.user = "info@devplace.com.ar";
            this.pass = "Clave-Info-237";
            
        }


        public string getMailTo()
        {
            return this.mailTo;
        }


        public bool sendMailExterno()
        {
            try
            {
            /* SmtpClient SmtpServer = new SmtpClient("smtpout.secureserver.net");

             SmtpServer.EnableSsl = true;
             SmtpServer.Port = 465;
             SmtpServer.UseDefaultCredentials = false;
             SmtpServer.Credentials = new System.Net.NetworkCredential(this.user, this.pass);


             MailMessage mail = new MailMessage();
             mail.From = new MailAddress(this.mailFrom);

             string[] emailTo = mailTo.Split(',');
             for (int i = 0; i < emailTo.GetLength(0); i++)
                 mail.To.Add(emailTo[i]);


             if ((cco != null) && (cco != ""))
             {
                 string[] separator = { ";" };
                 string[] listCCO = cco.Split(separator, StringSplitOptions.None);

                 for (int z = 0; z < listCCO.Length; z++)
                     mail.Bcc.Add(listCCO[z].Trim());
             };

             if ((cc != null) && (cc != ""))
             {
                 string[] separator = { ";" };
                 string[] listCC = cc.Split(separator, StringSplitOptions.None);

                 for (int z = 0; z < listCC.Length; z++)
                     mail.CC.Add(listCC[z].Trim());
             };


             mail.Sender = new MailAddress(this.mailFrom);

             mail.Subject = this.subject;
             mail.Body = body;

             mail.IsBodyHtml = true;


             SmtpServer.Send(mail);*/

            MailMessage message = new MailMessage();
            message.From = new MailAddress("info@devplace.com.ar");

            string[] emailTo = mailTo.Split(',');
            for (int i = 0; i < emailTo.GetLength(0); i++)
                message.To.Add(emailTo[i]);


            message.Subject = this.subject;
            message.Body = body;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient();
            client.Send(message);

            return true;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
      
        
      
    }
