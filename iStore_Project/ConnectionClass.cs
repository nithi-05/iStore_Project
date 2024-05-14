using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace iStore_Project
{
    public class ConnectionClass
    {
        SqlConnection con;
        SqlCommand cmd;
        public ConnectionClass()
        {
            con = new SqlConnection(@"server=ABHISHEK_PC\SQLEXPRESS; database= Asp_Project; Integrated Security=True");
        }

        public int Fun_NonQuery(string query)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

        public string Fun_Scalar(string query)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(query, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }

        public SqlDataReader Fun_Reader(string query)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }

        public DataSet Fun_Adapter(string query)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}