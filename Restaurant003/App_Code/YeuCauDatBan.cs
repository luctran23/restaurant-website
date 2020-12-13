using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class YeuCauDatBan
    {
        public int maDatBan { get; set; }
        public string hoten { get; set; }
        public string email { get; set; }
        public string soDt { get; set; }
        public int soLuongKhach { get; set; }
        public DateTime ngay { get; set; }

        public YeuCauDatBan()
        {

        }

        public YeuCauDatBan(string hoten, string email, string soDt, int soLuongKhach, DateTime ngay)
        {
            this.hoten = hoten;
            this.email = email;
            this.soDt = soDt;
            this.soLuongKhach = soLuongKhach;
            this.ngay = ngay;
        }
    }
}