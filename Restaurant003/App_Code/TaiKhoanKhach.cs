using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class TaiKhoanKhach
    {
        public string email { get; set; }
        public string matKhau { get; set; }
        public TaiKhoanKhach()
        {

        }

        public TaiKhoanKhach(string email, string matKhau)
        {
            this.email = email;
            this.matKhau = matKhau;
        }

    }
}