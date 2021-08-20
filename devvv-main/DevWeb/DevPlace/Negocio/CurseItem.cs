using System;

namespace CruceroDelNorte.Negocio
{
    public class CurseItem
    {
        public int Id { get; set; }
        public int TechnologyId { get; set; }
        public string TeacherName { get; set; }
        public string Linkedin { get; set; }
        public string Photo { get; set; }
        public DateTime DateStart { get; set; }
        public DateTime DateEnd { get; set; }
        public string ItemDays { get; set; }
        public string Name { get; set; }
        public string Days
        {
            get
            {
                string _days = string.Empty;
                string[] _split = ItemDays.Split('-');

                if (_split.Length > 0)
                {
                    foreach (string iDay in _split)
                    {
                        switch (iDay)
                        {
                            case "0":
                                _days = _days + " y Domingo";
                                break;
                            case "1":
                                _days = _days + " y Lunes";
                                break;
                            case "2":
                                _days = _days + " y Martes";
                                break;
                            case "3":
                                _days = _days + " y Miercoles";
                                break;
                            case "4":
                                _days = _days + " y Jueves";
                                break;
                            case "5":
                                _days = _days + " y Viernes";
                                break;
                            case "6":
                                _days = _days + " y Sabado";
                                break;

                        }
                    }
                }

                _days=_days.Substring(2, _days.Length - 2);

                return _days;
            }
        }

        public string Months
        {
            get
            {                

                return GetMonth(this.DateStart.Month) +" - "+ GetMonth(this.DateEnd.Month);
            }
        }

        public string Hours
        {
            get
            {

                return this.DateStart.Hour.ToString() + " hs. - " + this.DateEnd.Hour.ToString() + " hs.";
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

        public string Dates
        {
            get
            {
                string sDate = string.Empty;
                if (DateStart.Day < 10)
                    sDate = "0" + DateStart.Day.ToString();
                else
                    sDate = DateStart.Day.ToString();

                sDate = sDate + "/";

                if (DateStart.Month < 10)
                    sDate = sDate + "0" + DateStart.Month.ToString();
                else
                    sDate = sDate + DateStart.Month.ToString();


                sDate = sDate + " - ";


                if (DateEnd.Day < 10)
                    sDate = sDate + "0" + DateEnd.Day.ToString();
                else
                    sDate = sDate + DateEnd.Day.ToString();

                sDate = sDate + "/";

                if (DateEnd.Month < 10)
                    sDate = sDate + "0" + DateEnd.Month.ToString();
                else
                    sDate = sDate + DateEnd.Month.ToString();

                return sDate;
            }
        }


       
    }
}