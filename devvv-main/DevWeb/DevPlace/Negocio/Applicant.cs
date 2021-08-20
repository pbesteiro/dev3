using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CruceroDelNorte.Negocio
{
    public class Applicant
    {
        public string FirstName { get; set; }
        public string LastName{ get; set; }
        public string Email { get; set; }
        public int CurseItemId { get; set; }
        public string Dni { get; set; }
        public string Telephone { get; set; }
        public DateTime BirthDate { get; set; }
        public int ProvinceId { get; set; }
        public int PaymentType { get; set; }
        public int Working { get; set; }
        public string Job { get; set; }
        public string Area { get; set; }
        public string Company { get; set; }
        public string EducaionLevel { get; set; }
        public int LookingJob { get; set; }
        public int MadeCurse { get; set; }
        public string CursoRealizado { get; set; }
        public int ApplyContactedId { get; set; }
    }
}