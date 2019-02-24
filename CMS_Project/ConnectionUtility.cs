using System;
using System.Data.SqlClient;


namespace CMS_Project
{
    public class ConnectionUtility
    {
        public SqlConnection conn;


        public SqlConnection GetConnection()
        {
            //CONNECT TO DB
            string StrConn = @"data source = .\Sqlexpress; integrated security = true; database = CMS_DATABASE";
            conn = new SqlConnection(StrConn);
            conn.Open();
            return conn;

        }

        public SqlDataReader GetReader(String query)
        {
            //CREATE A COMMAND
            SqlCommand cmd = new SqlCommand(query);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = this.GetConnection();

            //READ FROM DB

            SqlDataReader rdr = cmd.ExecuteReader();
            return rdr;
        }

        public void CloseConnection()
        {
            //CONNECTION CLOSE
            if (conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                this.conn.Close();
            }
        }

        
    }
}
