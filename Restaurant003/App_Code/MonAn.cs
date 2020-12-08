using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class MonAn
    {
        public int maMon { get; set; }
        public string tenMon { get; set; }
        public int soLuong { get; set; }
        public int donGia { get; set; }
        public string anh { get; set; }
        public int giaKm { get; set; }
        public int maDm { get; set; }
        public MonAn()
        {

        }

        public MonAn(string tenMon, int soLuong, int donGia, string anh, int giaKm, int maDm)
        {
            this.tenMon = tenMon;
            this.soLuong = soLuong;
            this.donGia = donGia;
            this.anh = anh;
            this.giaKm = giaKm;
            this.maDm = maDm;
        }
    }
}