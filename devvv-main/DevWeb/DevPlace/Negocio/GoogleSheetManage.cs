using System;
using Newtonsoft.Json; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Sheets.v4;
using Google.Apis.Sheets.v4.Data;
using Google.Apis.Services;
using Google.Apis.Util.Store;

using System.IO;
using System.Threading;

namespace CruceroDelNorte.Negocio
{

    public class GoogleSheetManage
    {
        private const string SHEET_ID = "1U8UGX8uMyV30fifKRSVDUAH7F-B6eKnyjmHabpaa2gA";

        static string[] Scopes = { SheetsService.Scope.SpreadsheetsReadonly };
        static string ApplicationName = "Devplace Sheets Manage";

        public GoogleSheetManage()
        {

        }


        public bool AddRowToConsultFormSheet(string email, string tel, string name)
        {
            UserCredential credential;

            using (var stream =
                new FileStream(HttpContext.Current.Server.MapPath("negocio/credentials.json"), FileMode.Open, FileAccess.Read))
            {
                // The file token.json stores the user's access and refresh tokens, and is created
                // automatically when the authorization flow completes for the first time.
                string credPath = HttpContext.Current.Server.MapPath("token.json");
                credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
                    GoogleClientSecrets.Load(stream).Secrets,
                    Scopes,
                    "user",
                    CancellationToken.None,
                    new FileDataStore(credPath, true)).Result;
                Console.WriteLine("Credential file saved to: " + credPath);
            }

            // Create Google Sheets API service.
            var service = new SheetsService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = ApplicationName,
            });

            
            var range = "Sheet1!A:C";
            List<Object> values = new List<Object>();
            values.Add(name);
            values.Add(tel);
            values.Add(email);

            ValueRange valueRange = new ValueRange();
          // valueRange.Values= new  
            valueRange.Values.Add(values);
            valueRange.MajorDimension = "ROWS";
            valueRange.Range = "Sheet1!A:C";

            //var optionalArgs = { "valueInputOption": "USER_ENTERED" }
            SpreadsheetsResource.ValuesResource.AppendRequest request = service.Spreadsheets.Values.Append(valueRange, SHEET_ID, range);

            /*// Prints the names and majors of students in a sample spreadsheet:
            // https://docs.google.com/spreadsheets/d/1U8UGX8uMyV30fifKRSVDUAH7F-B6eKnyjmHabpaa2gA/edit
            ValueRange response = request.Execute();
                IList<IList<Object>> values = response.Values;
                if (values != null && values.Count > 0)
                {
                    Console.WriteLine("Name, Major");
                    foreach (var row in values)
                    {
                        // Print columns A and E, which correspond to indices 0 and 4.
                        Console.WriteLine("{0}, {1}", row[0], row[4]);
                    }
                }
                else
                {
                    Console.WriteLine("No data found.");
                }
                Console.Read();*/
            return true;
        }

    }
}