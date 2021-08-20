using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

    public class DevPlacePage
    {

        public static string GetHtmlMenu()
        {
            StreamReader file = new StreamReader(Path.GetFullPath("menu.txt"));
            return file.ReadToEnd();
        }
    }
