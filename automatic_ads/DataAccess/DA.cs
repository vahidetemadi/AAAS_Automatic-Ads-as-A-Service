using System;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{

    public class DA
    {
        SqlConnection cnn;
        public String ExecuteCommand(String cmd)
        {
            cnn.Open();
            String s;
            SqlCommand sc = new SqlCommand(cmd,cnn);
            SqlDataReader sdr = new SqlDataReader();
            sdr = sc.ExecuteReader();
            s = sdr.GetString(0);
            cnn.Close();
            return s;
       
        }

    }
}
