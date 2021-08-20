using System;

namespace CruceroDelNorte
{
    public class MisFunciones
    {
        public static DateTime armarFecha(string fecha)
        {
            try
            {
                string[] fec = fecha.Split(new char[] { '/', '-' });

                int mes = int.Parse(fec[1]);
                int ano = int.Parse(fec[2]);
                int dia = int.Parse(fec[0]);

                return new DateTime(ano, mes, dia);

            }
            catch
            {                
                throw new Exception("Error con el formato de la fecha");

            }


        }


    }
}
