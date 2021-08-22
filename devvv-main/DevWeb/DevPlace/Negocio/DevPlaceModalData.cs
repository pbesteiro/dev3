using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CruceroDelNorte.Negocio
{
    public class DevPlaceModalData
    {
        public DevPlaceModalData()
        {           
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Amount { get; set; }
        public decimal ReserveAmount { get; set; }
        public string FeeText { get; set; }
        public string Discount1Text { get; set; }
        public string Discount2Text { get; set; }
    }
}