using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class DataUtil
    {
        SqlConnection con;
        public DataUtil()
        {
            string conString = @"Data Source=ADMIN\SQLEXPRESS;Initial Catalog=restaurant;Integrated Security=True";
            con = new SqlConnection(conString);
        }
        public List<MonAn> LayDsMonAn()
        {
            List<MonAn> ds = new List<MonAn>();
            string query = "select * from MonAn";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                MonAn m = new MonAn();
                m.maMon = (int)rd["maMon"];
                m.tenMon = (string)rd["tenMon"];
                m.soLuong = (int)rd["soLuong"];
                m.donGia = (int)rd["donGia"];
                m.anh = (string)rd["anh"];
                m.giaKm = (int)rd["giaKm"];
                m.maDm = (int)rd["maDm"];
                ds.Add(m);
            }
            con.Close();
            return ds;
        }
    }
}