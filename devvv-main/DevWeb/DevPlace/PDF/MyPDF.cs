using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.factories;

using System.Data;

using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Net;


namespace InterSeguridad
{


    public class PageEventHelper : PdfPageEventHelper
    {
        // original reference:
        //          http://www.mazsoft.com/blog/post/2008/04/30/Code-sample-for-using-iTextSharp-PDF-library.aspx
        //

        // This is the contentbyte object of the writer
        PdfContentByte cb;

        // we will put the final number of pages in a template
        PdfTemplate template;

        // this is the BaseFont we are going to use for the header / footer
        BaseFont bf = null;

        // This keeps track of the creation time
        DateTime PrintTime = DateTime.Now;

        public PageEventHelper()
        {
            _Title = "";
        }

        #region Properties
        private string _Title;
        public string Title
        {
            get { return _Title; }
            set { _Title = value; }
        }

        private string _HeaderLeft;
        public string HeaderLeft
        {
            get { return _HeaderLeft; }
            set { _HeaderLeft = value; }
        }

        private string _HeaderRight;
        public string HeaderRight
        {
            get { return _HeaderRight; }
            set { _HeaderRight = value; }
        }

        private Font _HeaderFont;
        public Font HeaderFont
        {
            get { return _HeaderFont; }
            set { _HeaderFont = value; }
        }

        private Font _FooterFont;
        public Font FooterFont
        {
            get { return _FooterFont; }
            set { _FooterFont = value; }
        }
        #endregion

        // we override the onOpenDocument method
        public override void OnOpenDocument(PdfWriter writer, Document document)
        {
            try
            {
                PrintTime = DateTime.Now;
                bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
                cb = writer.DirectContent;
                template = cb.CreateTemplate(50, 50);
            }
            catch (DocumentException de)
            {
                string str = de.Message;
            }
            catch (System.IO.IOException ioe)
            {
                string str = ioe.Message;
            }
        }

        public override void OnStartPage(PdfWriter writer, Document document)
        {
            base.OnStartPage(writer, document);

            Rectangle pageSize = document.PageSize;

            if (Title != string.Empty)
            {
                cb.BeginText();
                cb.SetFontAndSize(bf, 15);
                cb.SetRGBColorFill(50, 50, 200);
                cb.SetTextMatrix(pageSize.GetLeft(30), pageSize.GetTop(20));
                cb.ShowText(Title);
                cb.EndText();
            }

            if (HeaderLeft + HeaderRight != string.Empty)
            {
                PdfPTable HeaderTable = new PdfPTable(2);
                HeaderTable.DefaultCell.VerticalAlignment = Element.ALIGN_MIDDLE;
                HeaderTable.TotalWidth = pageSize.Width - 80;
                HeaderTable.SetWidthPercentage(new float[] { 45, 45 }, pageSize);

                PdfPCell HeaderLeftCell = new PdfPCell(new Phrase(8, HeaderLeft, HeaderFont));
                HeaderLeftCell.Padding = 5;
                HeaderLeftCell.PaddingBottom = 8;
                HeaderLeftCell.BorderWidthRight = 0;
                HeaderTable.AddCell(HeaderLeftCell);

                PdfPCell HeaderRightCell = new PdfPCell(new Phrase(8, HeaderRight, HeaderFont));
                HeaderRightCell.HorizontalAlignment = PdfPCell.ALIGN_RIGHT;
                HeaderRightCell.Padding = 5;
                HeaderRightCell.PaddingBottom = 8;
                HeaderRightCell.BorderWidthLeft = 0;
                HeaderTable.AddCell(HeaderRightCell);

                cb.SetRGBColorFill(0, 0, 0);
                HeaderTable.WriteSelectedRows(0, -1, pageSize.GetLeft(30), pageSize.GetTop(20), cb);
            }
        }

        public override void OnEndPage(PdfWriter writer, Document document)
        {
            base.OnEndPage(writer, document);

            int pageN = writer.PageNumber;
            String text = "Pagina " + pageN + " de  ";
            float text_width = bf.GetWidthPoint(text, 6);

            Rectangle pageSize = document.PageSize;

            cb.SetRGBColorFill(100, 100, 100);

            cb.BeginText();
            cb.SetFontAndSize(bf, 6);
            cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT,
                text,
                pageSize.GetRight(30),
                pageSize.GetBottom(20), 0);
            cb.EndText();

            cb.AddTemplate(template, pageSize.GetRight(30), pageSize.GetBottom(20));
        }

        public override void OnCloseDocument(PdfWriter writer, Document document)
        {
            base.OnCloseDocument(writer, document);

            template.BeginText();
            template.SetFontAndSize(bf, 6);
            template.SetTextMatrix(0, 0);
            template.ShowText("" + (writer.PageNumber - 1));
            template.EndText();
        }
    }

    public class MyPDF
    {
        const float TABLE_WIDTH = 530f;

        //***** hotizontal alignment table****/
        const int LEFT = 0;//0=Left, 1=Centre, 2=Right
        const int CENTER = 1;
        const int RIGHT = 2;
        /*********************/
        String pathImagenes;
        Visita visita;
        BaseFont bfTimes;
       
        Font fontInfo;
        Font fontBoldInfo;
        Font fontTitle;
        Font fontSubtitle;
        Font fontLabel;
        Font smallLeyenda;
        Font titleVeridicationTable;

        public MyPDF(String pathimagenes, Visita vis)
        {           

            bfTimes = BaseFont.CreateFont(BaseFont.TIMES_ROMAN, BaseFont.CP1252, false);
            fontTitle = new Font(bfTimes, 18, Font.BOLD, new BaseColor(72,94,132));
            fontSubtitle = new Font(bfTimes, 14, Font.NORMAL, new BaseColor(72, 94, 132));
            fontInfo = new Font(bfTimes, 10, Font.NORMAL, BaseColor.BLACK);
            fontLabel = new Font(bfTimes, 14, Font.NORMAL, new BaseColor(72, 94, 132));
            fontBoldInfo = new Font(bfTimes, 10, Font.BOLD, BaseColor.BLACK);
            smallLeyenda = new Font(bfTimes, 9, Font.ITALIC, new BaseColor(72, 94, 132));
            titleVeridicationTable = new Font(bfTimes, 9, Font.ITALIC, BaseColor.BLACK);

            visita = vis;
            pathImagenes = pathimagenes;
            obtenerContenidos();            
        }
        
        private void obtenerContenidos()
        {
            
        }
                
        public bool crearDocumento()
        {

            try
            {                
                string filename = "Visita_" + visita.Id_visita + ".pdf";
                var doc1 = new Document( PageSize.LEGAL );
                //string path = @"\\Protiff1\pdocs\temp\";
                string path = System.Environment.GetFolderPath(System.Environment.SpecialFolder.MyDocuments) + "\\";
                
                PdfWriter writer = PdfWriter.GetInstance(doc1, new FileStream(path + filename, FileMode.Create));
                PageEventHelper eventHeaderFooter = new PageEventHelper();
                eventHeaderFooter.FooterFont = fontInfo; 
                writer.PageEvent = eventHeaderFooter;                                 
                doc1.Open();

                generateHeader(doc1);
                generateVerificaciones(doc1);
                generateProtocolosPendientes(doc1);
                generateSolicitudesPendientes(doc1);
                generateObservacioness(doc1);
                generateFechaYFirma(doc1);
                 
                doc1.Close();

                System.Diagnostics.Process.Start(path + filename);
                return true;

            }
            catch(Exception ex)
            {
                Console.Write(ex.Message);
                throw ex;
            }
        }
        
        public void generateHeader(Document doc1)
        {
            try
            {                
                Font times = new Font(bfTimes, 20, Font.NORMAL, BaseColor.RED);

                Paragraph paragraph = new Paragraph(@"TEL: 0800-333-1416 www.interseguridad.com.ar info@interseguridad.com.ar", fontSubtitle);
                paragraph.Alignment = Element.ALIGN_RIGHT;
                paragraph.SpacingAfter = 5f;


                iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance(@"InterSeguridad\Images\logoInter.PNG");
                jpg.ScalePercent(60f);
                jpg.Alignment = iTextSharp.text.Image.TEXTWRAP | iTextSharp.text.Image.ALIGN_LEFT;
                jpg.BorderColorTop = BaseColor.WHITE;
                doc1.Add(jpg);
                doc1.Add(paragraph);

                doc1.Add(Chunk.NEWLINE);


                PdfPTable table = new PdfPTable(2);
                

                table.TotalWidth = TABLE_WIDTH;
                table.LockedWidth = true;
                table.HorizontalAlignment = 1;


                float[] widths = new float[] { 1.2f, 2f };
                table.SetWidths(widths);


                PdfPCell cell = new PdfPCell(new Phrase(" "));
                cell.BackgroundColor = BaseColor.BLUE;
                cell.HorizontalAlignment = 1; //0=Left, 1=Centre, 2=Right
                cell.Border = 0;
                table.AddCell(cell);
                table.DefaultCell.BackgroundColor = BaseColor.WHITE;

                Paragraph paragraphTable1 = new Paragraph();
                paragraphTable1.SpacingAfter = 15f;
                paragraphTable1.Add(table);
                doc1.Add(paragraphTable1);



                //Titulo  Constancia de ....

                PdfPTable tableTitle = new PdfPTable(1);


                tableTitle.TotalWidth = TABLE_WIDTH;
                tableTitle.LockedWidth = true;
                tableTitle.HorizontalAlignment = 1;

              

                cell = new PdfPCell(new Phrase("CONSTANCIA DE ASESORAMIENTO EN PLANTA N°", fontTitle));
                cell.Border = 1;
                cell.BorderWidthBottom = 1;
                cell.BorderWidthTop = 1;
                cell.PaddingBottom  = 2f;
                cell.BackgroundColor = new BaseColor(230,231,233); //gris clarito
                cell.BorderColorTop = new BaseColor(234, 202, 10);//amarillo
                cell.BorderColorBottom = BaseColor.BLACK;
                cell.HorizontalAlignment = 1; //0=Left, 1=Centre, 2=Right
                
                tableTitle.AddCell(cell);
                tableTitle.DefaultCell.BackgroundColor = BaseColor.WHITE;

                Paragraph paragraphTable2 = new Paragraph();
                paragraphTable2.SpacingAfter = 15f;
                paragraphTable2.Add(tableTitle);
                doc1.Add(paragraphTable2);
                


                //Establecimiento y domicilio
                table = new PdfPTable(2);

                table.TotalWidth = 530f;
                table.LockedWidth = true;
                table.HorizontalAlignment = 1;
                table.SpacingBefore = 0f;


                widths = new float[] { 100f, 430f };
                table.SetWidths(widths);


                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("Establecimiento:", fontLabel);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.Colspan = 3;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase(visita.Cliente.GrupoEmpresarial.Descripcion, fontInfo);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("Domicilio:", fontLabel);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase(visita.Cliente.Domicilio.ToUpper() + ", " + visita.Cliente.Localidad.ToUpper() + ", " + visita.Cliente.Provincia.ToUpper(), fontInfo);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("Fecha:", fontLabel);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase(visita.Fec_visita.ToShortDateString(), fontInfo);
                table.AddCell(cell);


                Paragraph paragraphTable3 = new Paragraph();
                paragraphTable3.SpacingAfter = 8f;
                paragraphTable3.Add(table);
                doc1.Add(paragraphTable3);



                tableTitle = new PdfPTable(1);


                tableTitle.TotalWidth = TABLE_WIDTH;
                tableTitle.LockedWidth = true;
                tableTitle.HorizontalAlignment = 1;



                cell = new PdfPCell(new Phrase("Por la presente, certificamos que en el día de la fecha se realizó el control/asesoramiento en planta, de acuerdo a lo previsto en el Programa de Seguridad e Higiene en el trabajo.", smallLeyenda));                
                cell.HorizontalAlignment = 0; //0=Left, 1=Centre, 2=Right
                cell.Border = 0;

                tableTitle.AddCell(cell);
                tableTitle.DefaultCell.BackgroundColor = BaseColor.WHITE;

                Paragraph paragraphTable4 = new Paragraph();
                //paragraphTable3.SpacingAfter = 15f;
                paragraphTable4.Add(tableTitle);
                doc1.Add(paragraphTable4);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        
        public void generateVerificaciones(Document doc1)
        {
            try
            {
                PdfPTable tableTitle = new PdfPTable(1);
                tableTitle.TotalWidth = TABLE_WIDTH;
                tableTitle.LockedWidth = true;
                tableTitle.HorizontalAlignment = 1;



                PdfPCell cell = new PdfPCell(new Phrase("Verificación de las condiciones", fontSubtitle));
                cell.Border = 1;
                cell.BorderWidthBottom = 1;
                cell.BorderWidthTop = 1;
                cell.PaddingBottom = 2f;
                cell.BackgroundColor = new BaseColor(230, 231, 233); //gris clarito
                cell.BorderColorTop = new BaseColor(234, 202, 10);//amarillo
                cell.BorderColorBottom = BaseColor.BLACK;
                cell.HorizontalAlignment = 0; //0=Left, 1=Centre, 2=Right

                tableTitle.AddCell(cell);
                tableTitle.DefaultCell.BackgroundColor = BaseColor.WHITE;

                Paragraph paragraphTable = new Paragraph();
                paragraphTable.SpacingAfter = 5f;
                paragraphTable.Add(tableTitle);
                doc1.Add(paragraphTable);





                PdfPTable tableVerificaciones = new PdfPTable(12);
                tableVerificaciones.TotalWidth = 540;
                tableVerificaciones.LockedWidth = true;
                tableVerificaciones.HorizontalAlignment = 1;


                float[] widths = new float[] { 120f, 20f, 20f, 20f, 120f, 20f, 20f, 20f, 120f, 20f, 20f, 20f };
                tableVerificaciones.SetWidths(widths);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.HorizontalAlignment = LEFT;
                cell.Phrase = new Phrase("Si", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();                
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.Phrase = new Phrase("No", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();                
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.Phrase = new Phrase("N/A", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);


                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.HorizontalAlignment = LEFT;
                cell.Phrase = new Phrase("Si", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.Phrase = new Phrase("No", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.Phrase = new Phrase("N/A", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.HorizontalAlignment = LEFT;
                cell.Phrase = new Phrase("Si", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.Phrase = new Phrase("No", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                cell = new PdfPCell();
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = new BaseColor(230, 231, 233);
                cell.Phrase = new Phrase("N/A", titleVeridicationTable);
                tableVerificaciones.AddCell(cell);

                int columnas = 0;

                foreach (Verificacion v in visita.Verificaciones)
                {

                    cell = new PdfPCell();
                    cell.Border = 0;
                    cell.HorizontalAlignment = LEFT;
                    cell.BackgroundColor = BaseColor.WHITE;
                    cell.Phrase = new Phrase("  "+v.Descripcion, titleVeridicationTable);
                    tableVerificaciones.AddCell(cell);

                    columnas = columnas +1 ;

                    cell = new PdfPCell();
                    cell.BackgroundColor = BaseColor.WHITE;
                    cell.HorizontalAlignment = LEFT;
                    if (v.Valor == 1)
                        cell.Phrase = new Phrase("x", titleVeridicationTable);
                    else
                        cell.Phrase = new Phrase("", titleVeridicationTable);
                    tableVerificaciones.AddCell(cell);

                    columnas = columnas + 1;

                    cell = new PdfPCell();
                    cell.HorizontalAlignment = LEFT;
                    cell.BackgroundColor =  BaseColor.WHITE;
                    if(v.Valor==2)
                        cell.Phrase = new Phrase("x", titleVeridicationTable);
                    else
                        cell.Phrase = new Phrase("", titleVeridicationTable);

                    tableVerificaciones.AddCell(cell);

                    columnas = columnas + 1;

                    cell = new PdfPCell();
                    cell.HorizontalAlignment = LEFT;
                    cell.BackgroundColor =  BaseColor.WHITE;
                    if (v.Valor == 3)
                        cell.Phrase = new Phrase("x", titleVeridicationTable);
                    else
                        cell.Phrase = new Phrase("", titleVeridicationTable);
                    tableVerificaciones.AddCell(cell);

                    columnas = columnas + 1;

                    if(columnas ==12)
                        columnas=0;

                }
                
                
                Paragraph paragraphTable1 = new Paragraph();
                paragraphTable1.SpacingBefore = 1f;
                paragraphTable1.Add(tableVerificaciones);
                doc1.Add(paragraphTable1);
                //doc1.Add(Chunk.NEWLINE);
            }
            catch
            {
            }

        }

        public void generateProtocolosPendientes(Document doc1)
        {
            try
            {
                PdfPTable tableTitle = new PdfPTable(1);
                tableTitle.TotalWidth = TABLE_WIDTH;
                tableTitle.LockedWidth = true;
                tableTitle.HorizontalAlignment = 1;



                PdfPCell cell = new PdfPCell(new Phrase("Protocolos Realizados", fontSubtitle));
                cell.Border = 1;
                cell.BorderWidthBottom = 1;
                cell.BorderWidthTop = 1;
                cell.PaddingBottom = 2f;
                cell.BackgroundColor = new BaseColor(230, 231, 233); //gris clarito
                cell.BorderColorTop = new BaseColor(234, 202, 10);//amarillo
                cell.BorderColorBottom = BaseColor.BLACK;
                cell.HorizontalAlignment = 0; //0=Left, 1=Centre, 2=Right

                tableTitle.AddCell(cell);
                tableTitle.DefaultCell.BackgroundColor = BaseColor.WHITE;

                Paragraph paragraphTable = new Paragraph();
                paragraphTable.SpacingBefore = 5f;
                paragraphTable.Add(tableTitle);
                doc1.Add(paragraphTable);


                PdfPTable tablePendientes = new PdfPTable(1);
                tablePendientes.TotalWidth = 540;
                tablePendientes.LockedWidth = true;
                tablePendientes.HorizontalAlignment = 1;


                float[] widths = new float[] { 540f };
                tablePendientes.SetWidths(widths);

                foreach (Tarea t in visita.Tareas)
                {
                    if (t.Protocolo.Id_protocolo > 0)
                    {
                        cell = new PdfPCell();
                        cell.Border = 0;
                        cell.HorizontalAlignment = LEFT;
                        cell.BackgroundColor = BaseColor.WHITE;
                        cell.Phrase = new Phrase("    " + t.Protocolo.Descripcion.ToUpper(), fontInfo);
                        tablePendientes.AddCell(cell);
                    }
                }


                Paragraph paragraphTable1 = new Paragraph();
                paragraphTable1.SpacingBefore = 1f;
                paragraphTable1.SpacingAfter = 1f;
                paragraphTable1.Add(tablePendientes);
                doc1.Add(paragraphTable1);
                //doc1.Add(Chunk.NEWLINE);
            }
            catch
            {
            }

        }

        public void generateSolicitudesPendientes(Document doc1)
        {
            try
            {
                PdfPTable tableTitle = new PdfPTable(1);
                tableTitle.TotalWidth = TABLE_WIDTH;
                tableTitle.LockedWidth = true;
                tableTitle.HorizontalAlignment = 1;



                PdfPCell cell = new PdfPCell(new Phrase("Solicitudes del Cliente", fontSubtitle));
                cell.Border = 1;
                cell.BorderWidthBottom = 1;
                cell.BorderWidthTop = 1;
                cell.PaddingBottom = 2f;
                cell.BackgroundColor = new BaseColor(230, 231, 233); //gris clarito
                cell.BorderColorTop = new BaseColor(234, 202, 10);//amarillo
                cell.BorderColorBottom = BaseColor.BLACK;
                cell.HorizontalAlignment = 0; //0=Left, 1=Centre, 2=Right

                tableTitle.AddCell(cell);
                tableTitle.DefaultCell.BackgroundColor = BaseColor.WHITE;

                Paragraph paragraphTable = new Paragraph();
                paragraphTable.SpacingBefore = 1f;
                paragraphTable.SpacingAfter = 1f;
                paragraphTable.Add(tableTitle);
                doc1.Add(paragraphTable);


                PdfPTable tablePendientes = new PdfPTable(1);
                tablePendientes.TotalWidth = 540;
                tablePendientes.LockedWidth = true;
                tablePendientes.HorizontalAlignment = 1;


                float[] widths = new float[] { 540f };
                tablePendientes.SetWidths(widths);

                foreach (Solicitud t in visita.Solicitudes)
                {
                    //if (t.Protocolo.Id_protocolo == 0)
                    //{
                        cell = new PdfPCell();
                        cell.Border = 0;
                        cell.HorizontalAlignment = LEFT;
                        cell.BackgroundColor = BaseColor.WHITE;
                        cell.Phrase = new Phrase("    " + t.Descripcion.ToUpper(), fontInfo);
                        tablePendientes.AddCell(cell);
                    //}
                }


                Paragraph paragraphTable1 = new Paragraph();               
                paragraphTable1.SpacingBefore = 1f;
                paragraphTable1.SpacingAfter = 1f;
                paragraphTable1.Add(tablePendientes);
                doc1.Add(paragraphTable1);
                //doc1.Add(Chunk.NEWLINE);
            }
            catch
            {
            }

        }

        public void generateObservacioness(Document doc1)
        {
            try
            {
                PdfPTable tableTitle = new PdfPTable(1);
                tableTitle.TotalWidth = TABLE_WIDTH;
                tableTitle.LockedWidth = true;
                tableTitle.HorizontalAlignment = 1;

                
                PdfPCell cell = new PdfPCell(new Phrase("Observaciones", fontSubtitle));
                cell.Border = 1;
                cell.BorderWidthBottom = 1;
                cell.BorderWidthTop = 1;
                cell.PaddingBottom = 2f;
                cell.BackgroundColor = new BaseColor(230, 231, 233); //gris clarito
                cell.BorderColorTop = new BaseColor(234, 202, 10);//amarillo
                cell.BorderColorBottom = BaseColor.BLACK;
                cell.HorizontalAlignment = 0; //0=Left, 1=Centre, 2=Right

                tableTitle.AddCell(cell);
                tableTitle.DefaultCell.BackgroundColor = BaseColor.WHITE;

                Paragraph paragraphTable = new Paragraph();
                paragraphTable.SpacingBefore = 1f;
                paragraphTable.SpacingAfter = 1f;
                paragraphTable.Add(tableTitle);
                doc1.Add(paragraphTable);


                PdfPTable tablePendientes = new PdfPTable(1);
                tablePendientes.TotalWidth = 540;
                tablePendientes.LockedWidth = true;
                tablePendientes.HorizontalAlignment = 1;


                float[] widths = new float[] { 540f };
                tablePendientes.SetWidths(widths);

                
                   
                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = LEFT;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("    " + visita.Observaciones.ToUpper(), fontInfo);
                tablePendientes.AddCell(cell);
                    
                

                Paragraph paragraphTable1 = new Paragraph();
                paragraphTable1.SpacingBefore = 1f;
                paragraphTable1.SpacingAfter = 1f;
                paragraphTable1.Add(tablePendientes);
                doc1.Add(paragraphTable1);
                //doc1.Add(Chunk.NEWLINE);
            }
            catch
            {
            }

        }
                 
      
        public void generateFechaYFirma(Document doc1)
        {
            try
            {

                doc1.Add(Chunk.NEWLINE);
                
                PdfPTable tableLeyenda = new PdfPTable(1);
                tableLeyenda.TotalWidth = 530f;
                tableLeyenda.LockedWidth = true;
                tableLeyenda.HorizontalAlignment = 1;
                tableLeyenda.SpacingBefore = 10f;

                /* PdfPCell cellLeyenda = new PdfPCell(new Phrase("DENUNCIA DE SINIESTRO: El asegurado comunicará al Asegurador el acaecimiento de siniestro dentro de los tres días, de conocerlo, bajo pena de perder el derecho a ser indemnizado. Clausula 4 y 23 de las Condiciones Generales de la Póliza Art. 40, 47 y 115 Ley de Seguros N° 17.418. \n El asegurado no puede reconocer su responsabilidad ni celebrar transacción sin anuencia del Asegurador (Cláusula 7 de las Condiciones Generales de Póliza - Art 110 Ley de Seguros Nro. 17.418.) \n En caso de robo del Vehículo efectúe la denuncia telefonicamente al Comando de Vigilancia Motorizada Tel: 101 luego concurra a la comisaría o dependencia policial que corresponda.  ", smallLeyenda));

                 cellLeyenda.BackgroundColor = BaseColor.PINK;
                 cellLeyenda.HorizontalAlignment = 0; //0=Left, 1=Centre, 2=Right
                 cellLeyenda.BorderWidthLeft = 1f;
                 cellLeyenda.BorderWidthRight = 1f;
                 cellLeyenda.BorderWidthTop = 1f;
                 cellLeyenda.BorderWidthBottom = 1f;
                 tableLeyenda.AddCell(cellLeyenda);
                
                 doc1.Add(tableLeyenda);*/
                                
               
                doc1.Add(Chunk.NEWLINE);
                

                PdfPTable table = new PdfPTable(2);

                table.TotalWidth = 530f;
                table.LockedWidth = true;
                table.HorizontalAlignment = 1;
                table.SpacingBefore = 10f;

                float[] widths = new float[] { 260f, 260f };
                table.SetWidths(widths);

                Font smallTimes = new Font(bfTimes, 8, Font.NORMAL, BaseColor.BLACK);
                Font smallFirma = new Font(bfTimes, 8, Font.NORMAL, BaseColor.BLACK);


                PdfPCell cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = CENTER;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("------------------------", smallTimes);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = CENTER;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("-------------------------", smallTimes);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = CENTER;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("Firma y Aclaracion Inter Seguridad", smallFirma);
                table.AddCell(cell);

                cell = new PdfPCell();
                cell.Border = 0;
                cell.HorizontalAlignment = CENTER;
                cell.BackgroundColor = BaseColor.WHITE;
                cell.Phrase = new Phrase("Firma y Aclaracion del Cliente", smallFirma);
                table.AddCell(cell);

                doc1.Add(table);

                doc1.Add(Chunk.NEWLINE);


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

      
        
    }


    

   

}
