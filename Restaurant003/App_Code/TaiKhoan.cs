using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class TaiKhoan
    {
        public int maTk { get; set; }
        public string tenTk { get; set; }
        public string mk { get; set; }
        public TaiKhoan()
        {

        }

        public TaiKhoan(string tenTk, string mk)
        {
            this.tenTk = tenTk;
            this.mk = mk;
        }
    }
}