using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace MotoStore
{
    internal class Receipt
    {
        MyDB db = new MyDB();
        public bool Insert(string MaNCC, string MaNVKho, DateTime NgayNhap)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemPhieuNhap", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@NgayNhap", NgayNhap);
                command.Parameters.AddWithValue("@MaNVKho", MaNVKho);
                command.Parameters.AddWithValue("@MaNCC", MaNCC);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm Phiếu Nhập", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return false;
                    }
                    else
                    {
                        MessageBox.Show("Thêm thành công", "Thêm Phiếu Nhập", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return true;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Thêm Phiếu Nhập", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                finally { db.Close(); }
            }
        }
        public void ThemChiTietPhieuNhap(string MaPN,string MaMH,int SoLuong)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemCTPN", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaPN", MaPN);
                command.Parameters.AddWithValue("@MaMH", MaMH);
                command.Parameters.AddWithValue("@SoLuong", SoLuong);
                try
                {
                    db.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception )
                {
                }
                finally { db.Close(); }
            }
        }

        public DataTable LayDS()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_DSPhieuNhap", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDS(string MaNV , string TenNV , string TenNCC , string SDT , DateTime? TuNgay, DateTime? DenNgay)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM dbo.fn_DSPhieuNhap(@MaNV, @TenNV, @TenNCC, @SDT, @TuNgay, @DenNgay)", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.SelectCommand.Parameters.AddWithValue("@MaNV",  MaNV);
                adapter.SelectCommand.Parameters.AddWithValue("@TenNV", TenNV);
                adapter.SelectCommand.Parameters.AddWithValue("@TenNCC", TenNCC);
                adapter.SelectCommand.Parameters.AddWithValue("@SDT", SDT);
                adapter.SelectCommand.Parameters.AddWithValue("@TuNgay", TuNgay != null ? (object)TuNgay : DBNull.Value);
                adapter.SelectCommand.Parameters.AddWithValue("@DenNgay", DenNgay != null ? (object)DenNgay : DBNull.Value);
                adapter.Fill(data);
                return data;
            }

        }
        public string MaPhieuNhapCuoiCung()
        {
            using (SqlCommand command = new SqlCommand("SELECT TOP 1 MaPN FROM Phieu_Nhap ORDER BY CAST(SUBSTRING(MaPN, 3, LEN(MaPN)) AS INT) DESC", db.Connection))
            {
                db.Open();
                string result = command.ExecuteScalar()?.ToString();
                db.Close();
                return result;

            }
        }
        public DataSet LayChiTietPhieuNhap(string MaPN)
        {
            DataSet ds = new DataSet();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_XemChiTietPhieuNhapXe(@MaPN)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaPN", MaPN);
                adapter.Fill(ds, "Xe");
            }
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_XemChiTietPhieuNhapPhuTung(@MaPN)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaPN", MaPN);
                adapter.Fill(ds, "PhuTung");
            }
            return ds;
        }
        public DataTable LayThongTinPhieuNhap(string MaPN)
        {
            DataTable dataTable = new DataTable();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM fn_ThongTinPhieuNhap(@MaPN)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaPN", MaPN);
                adapter.Fill(dataTable);
                return dataTable;
            }
            
        }


    }
}
