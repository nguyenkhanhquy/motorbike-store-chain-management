using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

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

        public DataTable LayDS( string MaNV, string TenNV, string TenKH, string SDT, DateTime? TuNgay, DateTime? DenNgay)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_DSHoaDon(@MaNV, @TenNV, @TenKH, @SDT, @TuNgay, @DenNgay)", db.Connection))
            {
                DataTable data = new DataTable();
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

        public bool ThemCTHDMatHang(string MaHD, string MaMH)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemCTHDMatHang", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaHD", MaHD);
                command.Parameters.AddWithValue("@MaMH", MaMH);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm CTHD mặt hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return false;
                    }
                    return true;
                    
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Thêm CTHD mặt hàng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                finally { db.Close(); }
            }
        }

        public bool SuaCTHDMatHang(string MaHD, string MaMH, int SoLuong)
        {
            using (SqlCommand command = new SqlCommand("sp_SuaCTHDMatHang", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaHD", MaHD);
                command.Parameters.AddWithValue("@MaMH", MaMH);
                command.Parameters.AddWithValue("@SoLuong", SoLuong);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Sửa không thành công", "Sửa CTHD mặt hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return false;
                    }
                    return true;
                   
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Sửa CTHD mặt hàng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                finally { db.Close(); }
            }
        }
        public void XoaCTHDMatHang(string MaHD, string MaMH)
        {
            using (SqlCommand command = new SqlCommand("DELETE FROM Chi_Tiet_Hoa_Don WHERE MaHD = @MaHD AND MaMH = @MaMH", db.Connection))
            {
                command.Parameters.AddWithValue("@MaHD", MaHD);
                command.Parameters.AddWithValue("@MaMH", MaMH);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Xóa không thành công", "Xóa chi tiết hóa đơn mặt hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Xóa Chi Tiết Hóa Đơn Mặt Hàng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }
            }
        }
        public bool ThemCTHDBaoDuong(string MaHD, string MaBD,string MaNV)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemCTHDBaoDuong", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaHD", MaHD);
                command.Parameters.AddWithValue("@MaBD", MaBD);
                command.Parameters.AddWithValue("@MaNVBD", MaNV);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm CTHD Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return false;
                    }
                    return true;

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Thêm CTHD Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                finally { db.Close(); }
            }
        }

        public bool SuaCTHDBaoDuong(string MaHD, string MaBD,string MaNVBD, int SoLuong)
        {
            using (SqlCommand command = new SqlCommand("sp_SuaCTHDBaoDuong", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaHD", MaHD);
                command.Parameters.AddWithValue("@MaBD", MaBD);
                command.Parameters.AddWithValue("@MaNVBD", MaNVBD);
                command.Parameters.AddWithValue("@SoLuong", SoLuong);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Sửa không thành công", "Sửa CTHD Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return false;
                    }
                    return true;

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Sửa CTHD Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                finally { db.Close(); }
            }
        }
        public void XoaCTHDBaoDuong(string MaHD, string MaBD, string MaNV)
        {
            using (SqlCommand command = new SqlCommand("DELETE FROM Chi_Tiet_Hoa_Don WHERE MaHD = @MaHD AND MaBD = @MaBD and MaNVBaoDuong=@MaNV", db.Connection))
            {
                command.Parameters.AddWithValue("@MaHD", MaHD);
                command.Parameters.AddWithValue("@MaBD", MaBD);
                command.Parameters.AddWithValue("@MaNV", MaNV);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Xóa không thành công", "Xóa chi tiết hóa đơn Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Xóa Chi Tiết Hóa Đơn Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }
            }
        }

        public bool Insert(string MaKH, string MaNVThuNgan,DateTime NgayLap)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemHoaDon", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@NgayLap", NgayLap);
                command.Parameters.AddWithValue("@MaNVThuNgan", MaNVThuNgan);
                command.Parameters.AddWithValue("@MaKH", MaKH);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm Hóa Đơn", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return false;
                    }
                    else
                    {
                        MessageBox.Show("Thêm thành công", "Thêm Hóa Đơn", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return true;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Thêm Hóa Đơn", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                finally { db.Close(); }
            }
        }
        public DataTable LayThongTinHoaDon(string MaHD)
        {
            DataTable dataTable = new DataTable();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_ThongTinHoaDon(@MaHD)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaHD", MaHD);
                adapter.Fill(dataTable);
                return dataTable;
            }
        }
        public string MaHoaDonCuoiCung()
        {
            using (SqlCommand command = new SqlCommand("SELECT TOP 1 MaHD FROM Hoa_Don ORDER BY CAST(SUBSTRING(MaHD, 3, LEN(MaHD)) AS INT) DESC", db.Connection))
            {
                db.Open();
                string result = command.ExecuteScalar()?.ToString();
                db.Close();
                return result;
            }
        }
    }
}
