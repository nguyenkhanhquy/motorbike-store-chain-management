using System;
using System.Data;
using System.Data.SqlClient;

namespace MotoStore
{
    internal class Invoice
    {
        MyDB db = new MyDB();
        public DataTable LayDS()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_DSHoaDon", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDS(bool? TraGop, string MaNV, string TenNV, string TenKH, string SDT, DateTime? TuNgay, DateTime? DenNgay)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_DSHoaDon(@TraGop, @MaNV, @TenNV, @TenKH, @SDT, @TuNgay, @DenNgay)", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.SelectCommand.Parameters.AddWithValue("@TraGop", TraGop != null ? (object)TraGop : DBNull.Value);
                adapter.SelectCommand.Parameters.AddWithValue("@MaNV", MaNV);
                adapter.SelectCommand.Parameters.AddWithValue("@TenNV", TenNV);
                adapter.SelectCommand.Parameters.AddWithValue("@TenKH", TenKH);
                adapter.SelectCommand.Parameters.AddWithValue("@SDT", SDT);
                adapter.SelectCommand.Parameters.AddWithValue("@TuNgay", TuNgay != null ? (object)TuNgay : DBNull.Value);
                adapter.SelectCommand.Parameters.AddWithValue("@DenNgay", DenNgay != null ? (object)DenNgay: DBNull.Value);
                adapter.Fill(data);
                return data;
            }
        }

        public DataSet LayChiTietHoaDon(string MaHD)
        {
            DataSet ds = new DataSet();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_XemChiTietHoaDonXe(@MaHD)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaHD", MaHD);
                adapter.Fill(ds, "Xe");
            }
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_XemChiTietHoaDonPhuTung(@MaHD)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaHD", MaHD);
                adapter.Fill(ds, "PhuTung");
            }
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_XemChiTietHoaDonBaoDuong(@MaHD)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaHD", MaHD);
                adapter.Fill(ds, "BaoDuong");
            }
            return ds;
        }

    }
}
