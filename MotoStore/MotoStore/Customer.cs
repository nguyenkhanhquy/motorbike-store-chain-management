using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    internal class Customer
    {
        MyDB db = new MyDB();
        public void Insert(string TenKH, string SDT, string GioiTinh, string CCCD, string DiaChi)
        {

            using (SqlCommand command = new SqlCommand("sp_ThemKhachHang", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@TenKH", TenKH);
                command.Parameters.AddWithValue("@SDT", SDT);
                command.Parameters.AddWithValue("@CCCD", CCCD);
                command.Parameters.AddWithValue("@GioiTinh", GioiTinh);
                command.Parameters.AddWithValue("@DiaChi", DiaChi);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm khách hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Thêm thành công", "Thêm khách hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Thêm khách hàng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }
            }
        }
        public void Update(string MaKH, string TenKH, string SDT, string GioiTinh, string CCCD, string DiaChi)
        {
            using (SqlCommand command = new SqlCommand("sp_SuaKhachHang", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaKH", MaKH);
                command.Parameters.AddWithValue("@TenKH", TenKH);
                command.Parameters.AddWithValue("@SDT", SDT);
                command.Parameters.AddWithValue("@GioiTinh", GioiTinh);
                command.Parameters.AddWithValue("@CCCD", CCCD);
                command.Parameters.AddWithValue("@DiaChi", DiaChi);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Sửa không thàn công", "Sửa khách hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Sửa thành công", "Sửa khách hàng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Sửa khách hàng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    db.Close();
                }
            }
        }
        public DataTable LayDS()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_DSKhachHang", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDS(string search, string s)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From fn_TimKhachHangTheo{search}('{s}')", db.Connection))
                {
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
