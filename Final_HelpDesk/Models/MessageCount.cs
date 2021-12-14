using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Final_HelpDesk.Models
{
    public class MessageCount
    {
        SqlConnection ConnString = new SqlConnection(ConfigurationManager.ConnectionStrings["NRBHelpDesk"].ToString());
        public string GetAllMessagesCount()
        {
            string result="";
            ConnString.Open();
            string query = "select count(*) from Queries";
            SqlCommand cmd = new SqlCommand(query, ConnString);
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                result = reader[0].ToString();
            }
            //string result = cmd.ExecuteNonQuery().ToString();
            ConnString.Close();
            return result;
            
        }
    }
}