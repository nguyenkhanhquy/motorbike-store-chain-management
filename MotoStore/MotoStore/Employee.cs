using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    internal class Employee
    {
        MyDB db = new MyDB();
        public void Insert(string TenNV, DateTime NgaySinh, string DiaChi, string SDT, string GioiTinh, string CCCD, string ChucVu, string TenCN, decimal Luong)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemNhanVien", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@TenNV", TenNV);
                command.Parameters.AddWithValue("@NgaySinh", NgaySinh);
                command.Parameters.AddWithValue("@DiaChi", DiaChi);
                command.Parameters.AddWithValue("@SDT", SDT);
                command.Parameters.AddWithValue("@GioiTinh", GioiTinh);
                command.Parameters.AddWithValue("@CCCD", CCCD);
                command.Parameters.AddWithValue("@ChucVu", ChucVu);
                command.Parameters.AddWithValue("@TenCN", TenCN);
                command.Parameters.AddWithValue("@Luong", Luong);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Thêm thành công", "Thêm nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                { 
                    MessageBox.Show(ex.Message, "Thêm Nhân Thêm", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }
            }

        }
       
        public void Update(string MaNV, string TenNV, DateTime NgaySinh, string DiaChi, string SDT, string GioiTinh, string CCCD, string ChucVu, string TenCN, decimal Luong)
        {

            using (SqlCommand command = new SqlCommand("sp_SuaNhanVien", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaNV", MaNV);
                command.Parameters.AddWithValue("@TenNV", TenNV);
                command.Parameters.AddWithValue("@NgaySinh", NgaySinh);
                command.Parameters.AddWithValue("@DiaChi", DiaChi);
                command.Parameters.AddWithValue("@SDT", SDT);
                command.Parameters.AddWithValue("@GioiTinh", GioiTinh);
                command.Parameters.AddWithValue("@CCCD", CCCD);
                command.Parameters.AddWithValue("@ChucVu", ChucVu);
                command.Parameters.AddWithValue("@TenCN", TenCN);
                command.Parameters.AddWithValue("@Luong", Luong);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery()==0)
                    {
                        MessageBox.Show("Sửa không thành công", "Sửa nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Sửa thành công", "Sửa nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Sửa nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }
            }
        }
        
        
        public void Delete(string MaNV)
        {
            try
            {
                using (SqlCommand command = new SqlCommand("DELETE Nhan_Vien WHERE MaNV=@MaNV", db.Connection))
                {
                    command.Parameters.AddWithValue("@MaNV", MaNV);
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Xóa không thành công", "Xóa Nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Error);

                    }
                    else
                    {
                        MessageBox.Show("Xóa thành công", "Xóa nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Xóa Nhân viên", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                db.Close();
            }
        }
        public DataTable LayDS()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_DSNhanVien", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDS(string tenCN, string chucVu, string tenNV, string maNV)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select * From fn_DSNhanVien(@tenCN, @chucVu, @tenNV, @maNV)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@TenCN", tenCN);
                adapter.SelectCommand.Parameters.AddWithValue("@ChucVu", chucVu);
                adapter.SelectCommand.Parameters.AddWithValue("@TenNV", tenNV);
                adapter.SelectCommand.Parameters.AddWithValue("@MaNV", maNV);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayThongTinNhanVien(string maNV)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("Select * From fn_LayThongTinNhanVien(@maNV)", db.Connection))
                {
                    adapter.SelectCommand.Parameters.AddWithValue("@MaNV", maNV);
                    DataTable data = new DataTable();
                    adapter.Fill(data);
                    return data;
                }
            }
            catch (Exception)
            {

                return null;
            }
            
        }
    }
}
