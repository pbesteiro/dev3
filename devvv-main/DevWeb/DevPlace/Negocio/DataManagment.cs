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

        private string getPrices(int techId)
        {

            try
            {
                string optionPagos18Clases = "<option value='1'>1 Pago de $26.000 ARS </option><option value='2'>2 Pagos de $15.000 ARS</option><option value='3'>3 Pagos de $ 13.333 ARS</option><option value='4'>4 Pagos de $ 7.500 ARS</option><option value='5'>5 Pagos de $ 8.000 ARS</option><option value='6'>6 Pagos de $ 6.666 ARS</option>";
                string optionPagos8Clases = "<option value='1'>1 Pago de $ 13.000 ARS </option><option value='2'>2 Pagos de $ 7.500 ARS</option><option value='3'>3 Pagos de $ 6.666 ARS</option><option value='4'>4 Pagos de $ 5.000 ARS</option>";

                switch (techId)
                {
                    case 0:
                        return "<option value='0' selected>Seleccion&aacute; la tecnolog&iacute;a que quer&eacute;s aprender</option>";
                    case (int)EnumTechnology.C:
                        return optionPagos18Clases;
                    case (int)EnumTechnology.Node:
                        return optionPagos18Clases;
                    case (int)EnumTechnology.JAVASCRIPT:
                        return optionPagos8Clases;
                    case (int)EnumTechnology.React:
                        return optionPagos18Clases;
                    default:
                        return "";
                }

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


        public string GetItemFormApplyTemplate(int curseItemId)
        {
            try
            {
                Persistor per = new Persistor();
                CurseItem item = per.GetCurseItem(curseItemId);
                string provinces = per.GetProvinces();
                string contactedBy = per.GetContactedBy();


                StreamReader file = new StreamReader(HttpContext.Current.Server.MapPath("Templates/form-aplica.txt"));
                string fomtApplyTemplate = file.ReadToEnd();
                file.Close();
                file.Dispose();

                if (item.Id > 0)
                {
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@MESES_A_REEMPLAZAR@@", item.Months);
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@HORA_A_REEMPLAZAR@@", item.Hours);
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@CURSE_ITEM_ID@@", item.Id.ToString());
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@PROVINCIAS_A_REEMPLAZAR@@", provinces);
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@LLEGADA_A_REEMPLAZAR@@", contactedBy);
                    fomtApplyTemplate = fomtApplyTemplate.Replace("@@IMPORTES_A_REEMPLAZAR@@", getPrices(item.TechnologyId));


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