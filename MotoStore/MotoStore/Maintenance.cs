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
    internal class Maintenance
    {
        MyDB db = new MyDB();
        public void Insert(string TenBD, decimal PhiBD, string ThongTinBaoDuong)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemBaoDuong", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@TenBD", TenBD);
                command.Parameters.AddWithValue("@PhiBD", PhiBD);
                command.Parameters.AddWithValue("@ThongTinBaoDuong", ThongTinBaoDuong);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show("Thêm thành công", "Thêm Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Thêm Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }
            }
        }
        public void Update(string MaBD, string TenBD, decimal PhiBD, string ThongTinBaoDuong)
        {
            using (SqlCommand command = new SqlCommand("sp_SuaBaoDuong", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaBD", MaBD);
                command.Parameters.AddWithValue("@TenBD", TenBD);
                command.Parameters.AddWithValue("@PhiBD", PhiBD);
                command.Parameters.AddWithValue("@ThongTinBaoDuong", ThongTinBaoDuong);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Cập nhật không thành công", "Sửa Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show("Cập nhật thành công", "Sửa Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Sửa Bảo Dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }

            }
        }
        public void Delete(string MaBD)
        {
            try
            {
                using (SqlCommand command = new SqlCommand("DELETE Bao_Duong WHERE MaBD=@MaBD", db.Connection))
                {
                    command.Parameters.AddWithValue("@MaBD", MaBD);
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Xóa không thành công", "Xóa bảo dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);

                    }
                    else
                    {
                        MessageBox.Show("Xóa thành công", "Xóa bảo dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Xóa bảo dưỡng", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                db.Close();
            }
        }
        public DataTable LayDS()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_DSBaoDuong", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }

        public DataTable LayDS(string TenBD)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From fn_DSBaoDuong(@TenBD)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@TenBD", TenBD);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
    }
}
