using System;
using System.Collections.Generic;
using System.IO;
using System.Globalization;
using System.Web;

namespace CruceroDelNorte.Negocio
{
    public class DataManagment
    {

        public string GetItemCurseFeesTemplate(int technologyid)
        {
            try
            {
                Persistor per = new Persistor();
                List<CurseFee> items = per.GetCurseFees(technologyid);

                StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("Templates/CurseFees.txt"));
                string finalTemplate = file.ReadToEnd();
                file.Close();
                file.Dispose();

                if (items.Count > 0)
                {
                    string feeRow = string.Empty;
                    foreach (CurseFee item in items)
                    {
                        if(item.FeeNumber >1)
                            feeRow = feeRow+ "<p class='p-info-developers'>"+item.FeeNumber.ToString()+" Pagos de "+item.Amount.ToString("C", new CultureInfo("es-AR")) +" ARS</p>";
                        else
                            feeRow = feeRow + "<p class='p-info-developers'>" + item.FeeNumber.ToString() + " Pago de " + item.Amount.ToString("C", new CultureInfo("es-AR")) + " ARS</p>";

                    }

                    finalTemplate = finalTemplate.Replace("@@CUOTAS_A_REEMPLAZAR@@", feeRow);
                }
                else
                {

                    finalTemplate = finalTemplate.Replace("@@CUOTAS_A_REEMPLAZAR@@", "Sin precios disponibles");

                }

                return finalTemplate;
            }
            catch (Exception ex)
            {
                return "";

            }

        }


        public string GetItemCursesTemplate(int technologyid)
        {
            try
            {
                Persistor per = new Persistor();
                List<CurseItem> items = per.GetCursesItems(technologyid);
                string finalTemplate = string.Empty;
                string templateAux = string.Empty;


                StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("Templates/ListCurseItem.txt"));
                string curseItemTemplate = file.ReadToEnd();
                file.Close();
                file.Dispose();

                if (items.Count > 0)
                {
                    foreach (CurseItem item in items)
                    {
                        templateAux = curseItemTemplate;
                        templateAux = templateAux.Replace("@@MESES_A_REEMPLAZAR@@", item.Dates);
                        templateAux = templateAux.Replace("@@DIAS_A_REEMPLAZAR@@", item.Days);
                        templateAux = templateAux.Replace("@@HORA_A_REEMPLAZAR@@", item.Hours);
                        templateAux = templateAux.Replace("@@MENTOR_A_REEMPLAZAR@@", item.TeacherName);
                        templateAux = templateAux.Replace("@@CURSE_ITEM_ID@@", item.Id.ToString());

                        finalTemplate = finalTemplate + templateAux;
                    }
                }
                else
                {
                    file = new StreamReader(HttpContext.Current.Server.MapPath("Templates/EmptyListCurseItem.txt"));
                    finalTemplate = file.ReadToEnd();
                    file.Close();
                    file.Dispose();

                }

                return "<h2 class='pt-5'>Proximas fechas</h2>" + finalTemplate;

            }catch(Exception ex)
            {
                return "";

            }

        }


        public string GetItemCurseFeesCombo(int technologyid)
        {
            try
            {
                Persistor per = new Persistor();
                List<CurseFee> items = per.GetCurseFees(technologyid);


                string feeRow = "<option value='-1'>Seleccionar</option>";


                if (items.Count > 0)
                {
                    foreach (CurseFee item in items)
                    {
                        if (item.FeeNumber > 1)
                            feeRow = feeRow + "<option value='" + item.FeeNumber + "'>" + item.FeeNumber.ToString() + " Pagos</option>";
                        else
                            feeRow = feeRow + "<option value='" + item.FeeNumber + "'>" + item.FeeNumber.ToString() + " Pago</option>";

                    }
                }
                else
                {
                    feeRow = feeRow + "<option value='1'> 1 Pago </option>";
                }



                return feeRow;
            }
            catch (Exception ex)
            {
                return "";

            }

        }


        public string getProvinces()
        {

            try
            {
                Persistor per = new Persistor();
                return per.GetProvinces();

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


        public string getContactedBy()
        {

            try
            {
                Persistor per = new Persistor();
                return per.GetContactedBy();

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


        public string GetContactTemplate(int techId)
        {
            try
            {
                Persistor per = new Persistor();
                DevPlaceModalData form = per.GetContactFormData(techId);

                StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("Templates/ContactModal.txt"));
                string fomtApplyTemplate = file.ReadToEnd();
                file.Close();
                file.Dispose();

                if (form.Id > 0)
                {
                    
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@NOMBRE_CURSO@@", form.Name);
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@PRECIO@@", form.Amount.ToString("C", new CultureInfo("es-AR")));
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@PRECIO_RESERVA@@", form.ReserveAmount.ToString("C", new CultureInfo("es-AR")));
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@TEXTO_CUOTAS@@", form.FeeText);
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@PRIMER_DESCUENTO@@", form.Discount1Text);
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@SEGUNDO_DESCUENTO@@", form.Discount2Text);
                }

                return fomtApplyTemplate;
            }
            catch (Exception ex)
            {
                return "";
            }

        }


    }
}