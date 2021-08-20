using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data;

namespace CruceroDelNorte.Negocio
{
    public class Persistor
    {

        public List<CurseFee> GetCurseFees(int techId)
        {
            try
            {
                DevPlaceFormApply formDate = new DevPlaceFormApply();
                ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["sql"];

                SqlConnection conn = new SqlConnection(connSettings.ConnectionString);
                conn.Open();

                SqlParameter param = new SqlParameter();
                param.Value = techId;
                param.ParameterName = "@technologyId";
                param.SqlDbType = System.Data.SqlDbType.Int;

                SqlCommand command = new SqlCommand();
                command.CommandText = "sp_get_curse_fees";
                command.Connection = conn;
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(param);

                SqlDataReader reader = command.ExecuteReader();
                List<CurseFee> fees = new List<CurseFee>();
                CurseFee c = null;
                while (reader.Read())
                {
                    c = new CurseFee();
                    c.Amount = reader.GetDecimal(reader.GetOrdinal("Amount"));
                    c.FeeNumber = reader.GetInt32(reader.GetOrdinal("feeNumber"));
                    c.TenologyId = reader.GetInt32(reader.GetOrdinal("TechnologyId"));

                    fees.Add(c);
                }

                return fees;

            }
            catch (Exception ex)
            {
                return new List<CurseFee>();
            }
        }


        public void InertLog(string message, string title)
        {

            ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["sql"];

            SqlConnection connEx = new SqlConnection(connSettings.ConnectionString);
            connEx.Open();

            using (SqlCommand command = new SqlCommand())
            {
                command.CommandType = CommandType.Text;
                command.Connection = connEx;

                string sql = "insert into applicantErrorLog ( Description,Exception,Datetime) ";
                sql = sql + " values (" + title + "," + message + ",getdate());";

                command.CommandText = sql;
                command.ExecuteNonQuery();
            }
        }

        public void SaveApplicant(Applicant app)
        {
            try
            {
                ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["sql"];

                SqlConnection conn = new SqlConnection(connSettings.ConnectionString);
                conn.Open();


                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.Connection = conn;

                    string sql = "insert into Applicant (FirstName,LastName,Email,CurseItemId,Dni,Telephone,BirthDate,ProvinceId,PaymentType,Working,Job,Area,Company,EducaionLevel,LookingJob,MadeCurse,CursoRealizado,ApplyContactedId) ";
                    sql = sql + " values ('" + app.FirstName + "','" + app.LastName + "','" + app.Email + "'," + app.CurseItemId + ",'" + app.Dni + "','" + app.Telephone + "','" + app.BirthDate.ToString("yyyyMMdd") + "'," + app.ProvinceId + ",'" + app.PaymentType + "'," + app.Working + ",'" + app.Job + "','" + app.Area + "','" + app.Company + "','" + app.EducaionLevel + "'," + app.LookingJob + "," + app.MadeCurse + ",'" + app.CursoRealizado + "'," + app.ApplyContactedId + ");";

                    command.CommandText = sql;
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<CurseItem> GetCursesItems(int techId)
        {
            try
            {
                DevPlaceFormApply formDate = new DevPlaceFormApply();
                ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["sql"];

                SqlConnection conn = new SqlConnection(connSettings.ConnectionString);
                conn.Open();

                SqlParameter param = new SqlParameter();
                param.Value = techId;
                param.ParameterName = "@technolohyId";
                param.SqlDbType = System.Data.SqlDbType.Int;

                SqlCommand command = new SqlCommand();
                command.CommandText = "sp_get_curses_items";
                command.Connection = conn;
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(param);

                SqlDataReader reader = command.ExecuteReader();
                List<CurseItem> curses = new List<CurseItem>();
                CurseItem c = null;
                while (reader.Read())
                {
                    c = new CurseItem();
                    c.Id = reader.GetInt32(reader.GetOrdinal("Id"));
                    c.ItemDays = reader.GetString(reader.GetOrdinal("ItemDays"));
                    c.DateStart = reader.GetDateTime(reader.GetOrdinal("DateStart"));
                    c.DateEnd = reader.GetDateTime(reader.GetOrdinal("DateFinish"));
                    c.TeacherName = reader.GetString(reader.GetOrdinal("teacherName"));
                    c.Photo = reader.GetString(reader.GetOrdinal("LinkPhoto"));
                    c.Linkedin = reader.GetString(reader.GetOrdinal("Linkedin"));

                    curses.Add(c);
                }

                return curses;

            }
            catch (Exception ex)
            {
                return new List<CurseItem>();
            }
        }


        public CurseItem GetCurseItem(int curseItemId)
        {
            try
            {
                CurseItem item = new CurseItem();
                ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["sql"];

                SqlConnection conn = new SqlConnection(connSettings.ConnectionString);
                conn.Open();

                SqlParameter param = new SqlParameter();
                param.Value = curseItemId;
                param.ParameterName = "@curseItemId";
                param.SqlDbType = System.Data.SqlDbType.Int;

                SqlCommand command = new SqlCommand();
                command.CommandText = "sp_get_curse_item";
                command.Connection = conn;
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(param);

                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    item.Id = reader.GetInt32(reader.GetOrdinal("Id"));
                    item.Name = reader.GetString(reader.GetOrdinal("Name"));
                    item.TechnologyId = reader.GetInt32(reader.GetOrdinal("TechnologyId"));
                    item.ItemDays = reader.GetString(reader.GetOrdinal("ItemDays"));
                    item.DateStart = reader.GetDateTime(reader.GetOrdinal("DateStart"));
                    item.DateEnd = reader.GetDateTime(reader.GetOrdinal("DateFinish"));
                }

                return item;

            }
            catch (Exception ex)
            {
                return new CurseItem();
            }
        }


        public string GetProvinces()
        {
            try
            {
                DevPlaceFormApply formApply = new DevPlaceFormApply();
                ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["sql"];

                SqlConnection conn = new SqlConnection(connSettings.ConnectionString);
                conn.Open();

                SqlCommand command = new SqlCommand();
                command.CommandText = "sp_get_provinces";
                command.Connection = conn;
                command.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataReader reader = command.ExecuteReader();
                string options = string.Empty;

                while (reader.Read())
                {
                    options = options + "<option value='" + reader.GetInt32(reader.GetOrdinal("id")) + "' >" + reader.GetString(reader.GetOrdinal("Description")) + "</option>";

                }

                return options;

            }
            catch (Exception ex)
            {
                return "<option value='0' >Sin Opciones</option>";
            }
        }

        public string GetContactedBy()
        {
            try
            {
                DevPlaceFormApply formApply = new DevPlaceFormApply();
                ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["sql"];

                SqlConnection conn = new SqlConnection(connSettings.ConnectionString);
                conn.Open();

                SqlCommand command = new SqlCommand();
                command.CommandText = "sp_get_conected_by";
                command.Connection = conn;
                command.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataReader reader = command.ExecuteReader();
                string options = string.Empty;

                while (reader.Read())
                {
                    options = options + "<option value='" + reader.GetInt32(reader.GetOrdinal("id")) + "' >" + reader.GetString(reader.GetOrdinal("Description")) + "</option>";

                }

                return options;

            }
            catch (Exception ex)
            {
                return "<option value='0' >Sin Opciones</option>";
            }
        }


    }
}