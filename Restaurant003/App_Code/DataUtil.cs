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
        public void ThemMon(MonAn m)
        {
            con.Open();
            string query = "insert into MonAn values(@tenMon, @soLuong, @donGia, @anh, @giaKm, @maDm)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("tenMon", m.tenMon);
            cmd.Parameters.AddWithValue("soLuong", m.soLuong);
            cmd.Parameters.AddWithValue("donGia", m.donGia);
            cmd.Parameters.AddWithValue("anh", m.anh);
            cmd.Parameters.AddWithValue("giaKm", m.giaKm);
            cmd.Parameters.AddWithValue("maDm", m.maDm);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lay danh muc
        public List<DanhMuc> LayDm()
        {
            List<DanhMuc> ds = new List<DanhMuc>();
            string query = "select * from DanhMuc";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                DanhMuc m = new DanhMuc();
                m.maDm = (int)rd["maDm"];
                m.tenDm = (string)rd["tenDm"];
                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        public void XoaMon(int maMon)
        {
            con.Open();
            string query = "delete from MonAn where maMon = @maMon";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maMon", maMon);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lay ra 1 mon an de sua
        public MonAn Lay1Mon(int maMon)
        {
            con.Open();
            string query = "select * from MonAn where maMon = @maMon";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maMon", maMon);
            SqlDataReader rd = cmd.ExecuteReader();
            MonAn m = null;
            if(rd.Read())
            {
                m = new MonAn();
                m.maMon = (int)rd["maMon"];
                m.tenMon = (string)rd["tenMon"];
                m.soLuong = (int)rd["soLuong"];
                m.donGia = (int)rd["donGia"];
                m.anh = (string)rd["anh"];
                m.giaKm = (int)rd["giaKm"];
                m.maDm = (int)rd["maDm"];
            }
            con.Close();
            return m;
        }
        // sua mon method
        public void SuaMon(MonAn m)
        {
            con.Open();
            string query = "update MonAn set tenMon=@tenMon, soLuong=@soLuong, donGia=@donGia, anh=@anh, giaKm=@giaKm, maDm=@maDm where maMon=@maMon";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("tenMon", m.tenMon);
            cmd.Parameters.AddWithValue("soLuong", m.soLuong);
            cmd.Parameters.AddWithValue("donGia", m.donGia);
            cmd.Parameters.AddWithValue("anh", m.anh);
            cmd.Parameters.AddWithValue("giaKm", m.giaKm);
            cmd.Parameters.AddWithValue("maDm", m.maDm);
            cmd.Parameters.AddWithValue("maMon", m.maMon);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //lay toan bo khach hang
        public List<KhachHang> LayDsKhachHang()
        {
            List<KhachHang> ds = new List<KhachHang>();
            string query = "select * from KhachHang";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                KhachHang m = new KhachHang();
                m.maKh = (int)rd["maKh"];
                m.tenKh = (string)rd["tenKh"];
                m.diaChi = (string)rd["diaChi"];
                m.soDienThoai = (string)rd["soDienThoai"];
                m.email = (string)rd["email"];
                m.matKhau = (string)rd["matKhau"];
                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        //lay toan bo lien he
        public List<LienHe> LayDsLienHe()
        {
            List<LienHe> ds = new List<LienHe>();
            string query = "select * from LienHe";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                LienHe m = new LienHe();
                m.maLh = (int)rd["maLh"];
                m.ten = (string)rd["ten"];
                m.email = (string)rd["email"];
                m.chuThich = (string)rd["chuThich"];
                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        // lay toan bo tai khoan
        public List<TaiKhoan> LayDsTaiKhoan()
        {
            List<TaiKhoan> ds = new List<TaiKhoan>();
            string query = "select * from TaiKhoan";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                TaiKhoan m = new TaiKhoan();
                m.maTk = (int)rd["maTk"];
                m.tenTk = (string)rd["tenTk"];
                m.mk = (string)rd["mk"];
                
                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        // them tai khoan
        public void ThemTaiKhoan(TaiKhoan m)
        {
            con.Open();
            string query = "insert into TaiKhoan values(@tenTk, @mk)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("tenTk", m.tenTk);
            cmd.Parameters.AddWithValue("mk", m.mk);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // xoa tai khoan
        public void XoaTaiKhoan(int maTk)
        {
            con.Open();
            string query = "delete from TaiKhoan where maTk = @maTk";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maTk", maTk);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lay ra 1 tai khoan
        public TaiKhoan Lay1TaiKhoan(int maTk)
        {
            con.Open();
            string query = "select * from TaiKhoan where maTk = @maTk";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maTk", maTk);
            SqlDataReader rd = cmd.ExecuteReader();
            TaiKhoan m = null;
            if (rd.Read())
            {
                m = new TaiKhoan();
                m.maTk = (int)rd["maTk"];
                m.tenTk = (string)rd["tenTk"];
                m.mk = (string)rd["mk"];
            }
            con.Close();
            return m;
        }
        // sua tai khoan
        public void SuaTaiKhoan(TaiKhoan m)
        {
            con.Open();
            string query = "update TaiKhoan set tenTk=@tenTk, mk=@mk where maTk=@maTk";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("tenTk", m.tenTk);
            cmd.Parameters.AddWithValue("mk", m.mk);
            cmd.Parameters.AddWithValue("maTk", m.maTk);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lay ds ban
        public List<Ban> LayDsBan()
        {
            List<Ban> ds = new List<Ban>();
            string query = "select * from Ban";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Ban m = new Ban();
                m.maBan = (int)rd["maBan"];
                m.tenBan = (string)rd["tenBan"];
                m.tinhTrang = (string)rd["tinhTrang"];

                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        // them ban
        public void ThemBan(Ban m)
        {
            con.Open();
            string query = "insert into Ban values(@tenBan, @tinhTrang)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("tenBan", m.tenBan);
            cmd.Parameters.AddWithValue("tinhTrang", m.tinhTrang);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // xoa ban
        public void XoaBan(int maBan)
        {
            con.Open();
            string query = "delete from Ban where maBan = @maBan";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maBan", maBan);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lay 1 ban
        public Ban Lay1Ban(int maBan)
        {
            con.Open();
            string query = "select * from Ban where maBan = @maBan";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maBan", maBan);
            SqlDataReader rd = cmd.ExecuteReader();
            Ban m = null;
            if (rd.Read())
            {
                m = new Ban();
                m.maBan = (int)rd["maBan"];
                m.tenBan = (string)rd["tenBan"];
                m.tinhTrang = (string)rd["tinhTrang"];
            }
            con.Close();
            return m;
        }
        // sua ban
        public void SuaBan(Ban m)
        {
            con.Open();
            string query = "update Ban set tenBan=@tenBan, tinhTrang=@tinhTrang where maBan=@maBan";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("tenBan", m.tenBan);
            cmd.Parameters.AddWithValue("tinhTrang", m.tinhTrang);
            cmd.Parameters.AddWithValue("maBan", m.maBan);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lay danh sach yeu cau dat ban
        public List<YeuCauDatBan> LayDsYeuCau()
        {
            List<YeuCauDatBan> ds = new List<YeuCauDatBan>();
            string query = "select * from YcDatBan";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                YeuCauDatBan m = new YeuCauDatBan();
                m.maDatBan = (int)rd["maDatBan"];
                m.hoten = (string)rd["hoten"];
                m.email = (string)rd["email"];
                m.soDt = (string)rd["soDt"];
                m.soLuongKhach = (int)rd["soLuongKhach"];
                m.ngay = (DateTime)rd["ngay"];

                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        // lay danh sach hoa don
        public List<HoaDon> LayDsHoaDon()
        {
            List<HoaDon> ds = new List<HoaDon>();
            string query = "select * from HoaDon";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                HoaDon m = new HoaDon();
                m.maHd = (int)rd["maHd"];
                m.ngayLap = (DateTime)rd["ngayLap"];
                m.maKh = (int)rd["maKh"];

                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        // lay thong tin khach hang ban mahd
        public CtHoaDon Lay1KhBangMaHd(int maHd)
        {
            con.Open();
            string query = "select HoaDon.maHd, tenKh, diaChi, soDienThoai, email from KhachHang inner join HoaDon on KhachHang.maKh = HoaDon.maKh where maHd = @maHd group by HoaDon.maHd, KhachHang.tenKh, KhachHang.diaChi, KhachHang.email, KhachHang.soDienThoai";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maHd", maHd);
            SqlDataReader rd = cmd.ExecuteReader();
            CtHoaDon m = null;
            if (rd.Read())
            {
                m = new CtHoaDon();
                m.maHd = (int)rd["maHd"];
                m.tenKh = (string)rd["tenKh"];
                m.diaChi = (string)rd["diaChi"];
                m.soDienThoai = (string)rd["soDienThoai"];
                m.email = (string)rd["email"];
            }
            con.Close();
            return m;
        }
        // lay danh sach chi tiet mon theo mahd
        public List<CtMon> LayDsMonTheoMaHd(int maHd)
        {
            con.Open();
            List<CtMon> ds = new List<CtMon>();
            string query = "select CtHoaDon.maMon, MonAn.tenMon, CtHoaDon.soLuong, CtHoaDon.donGia, CtHoaDon.soLuong * CtHoaDon.donGia from MonAn inner join CtHoaDon on MonAn.maMon = CtHoaDon.maMon where maHd = @maHd";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maHd", maHd);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                CtMon m = new CtMon();
                m.maMon = (int)rd["maMon"];
                m.tenMon = (string)rd["tenMon"];
                m.soLuong = (int)rd["soLuong"];
                m.donGia = (int)rd["donGia"];
                m.thanhTien = (int)rd[4];
                ds.Add(m);
            }
            con.Close();
            return ds;
        }
        // lay tong tien
        public int LayTongTien(int maHd)
        {
            con.Open();
            int sum = 0;
            string query = "select sum(CtHoaDon.soLuong * CtHoaDon.donGia) from MonAn inner join CtHoaDon on MonAn.maMon = CtHoaDon.maMon where maHd = @maHd";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("maHd", maHd);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                sum = (int)rd[0];
            }
            con.Close();
            return sum;
        }
        // check tai khoan khi dang nhap
        public int KiemTraTaiKhoan(string tenTk, string mk)
        {
            int matchedAcc = 0;
            con.Open();
            string query = "select count(*) from TaiKhoan where tenTk=@tenTk and mk=@mk";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("tenTk", tenTk);
            cmd.Parameters.AddWithValue("mk", mk);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                matchedAcc = (int)rd[0];
            }
            con.Close();
            return matchedAcc;
        }
    }
}