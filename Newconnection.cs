using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class Newconnection
    {

        public SqlConnection connectionString()
        {

            string ConString = ConfigurationManager.ConnectionStrings["student"].ToString();
            SqlConnection connection = new SqlConnection(ConString);
            return connection;
        }
    }
}