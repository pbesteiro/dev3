using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CruceroDelNorte.Negocio
{
    public class DevPlaceFormApply
    {

        public DevPlaceFormApply()
        {
            Prices = new List<string>();
            Provinces = new List<string>();
            Boarding = new List<string>();
        }

        public int CurseItemId { get; set; }
        public int TechId { get; set; }
        public List<string> Prices { get; set; }
        public List<string> Boarding { get; set; }
        public List<string> Provinces { get; set; }
        public DateTime DateStart { get; set; }
        public DateTime DateEnd { get; set; }
        public string ItemDays { get; set; }
        public string Days
        {
            get
            {
                string _days = string.Empty;
                string[] _split = ItemDays.Split(',');

                if (_split.Length > 0)
                {
                    foreach (string iDay in _split)
                    {
                        switch (iDay)
                        {
                            case "0":
                                _days = _days + " Domingo";
                                break;
                            case "1":
                                _days = _days + " Lunes";
                                break;
                            case "2":
                                _days = _days + " Martes";
                                break;
                            case "3":
                                _days = _days + " Miercoles";
                                break;
                            case "4":
                                _days = _days + " Jueves";
                                break;
                            case "5":
                                _days = _days + " Viernes";
                                break;
                            case "6":
                                _days = _days + " Sabado";
                                break;

                        }
                    }
                }

                return _days;
            }
        }
        public string Months
        {
            get
            {

                return GetMonth(this.DateStart.Month) + " - " + GetMonth(this.DateEnd.Month);
            }
        }
        public string Hours
        {
            get
            {

                return this.DateStart.Hour.ToString() + " - " + this.DateEnd.Hour.ToString();
            }
        }
        private string GetMonth(int month)
        {


            switch (month)
            {
                case 1:
                    return "Ene";

                case 2:
                    return "Feb";
                case 3:
                    return "Mar";
                case 4:
                    return "Abr";
                case 5:
                    return "May";
                case 6:
                    return "Jun";
                case 7:
                    return "Jul";
                case 8:
                    return "Ago";
                case 9:
                    return "Sep";
                case 10:
                    return "Oct";
                case 11:
                    return "Nov";
                case 12:
                    return "Dic";
                default:
                    return "";


            }



        }

    }
}