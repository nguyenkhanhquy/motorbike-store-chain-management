using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Printing;
using System.Drawing;
using System.IO;
using System.Drawing.Imaging;

namespace MotoStore
{
    internal class Sparepart
    {
        MyDB db = new MyDB();
        public void Insert(string HSX, string TenMH, decimal DonGia, decimal GiaNhap, byte[] HinhAnh, string ChatLuong, string LoaiPT)
        {
            using (SqlCommand command = new SqlCommand("sp_ThemPhuTung", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@HSX", HSX);
                command.Parameters.AddWithValue("@TenMH", TenMH);
                command.Parameters.Add("@DonGia", SqlDbType.Money).Value = DonGia;
                command.Parameters.Add("@GiaNhap", SqlDbType.Money).Value = GiaNhap;
                command.Parameters.AddWithValue("@HinhAnh", ResizeImage(HinhAnh));
                command.Parameters.AddWithValue("@ChatLuong",ChatLuong);
                command.Parameters.AddWithValue("@LoaiPT", LoaiPT);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm Phụ Tùng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show("Thêm thành công", "Thêm Phụ Tùng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message, "Thêm Phụ Tùng", MessageBoxButtons.OK, MessageBoxIcon.Error);   
                }
                finally { db.Close(); }

            }
        }
        public void Update(string MaMH, string HSX, string TenMH, decimal DonGia, decimal GiaNhap, byte[] HinhAnh, string ChatLuong, string LoaiPT)
        {
            using (SqlCommand command = new SqlCommand("sp_SuaPhuTung", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaMH", MaMH);
                command.Parameters.AddWithValue("@HSX", HSX);
                command.Parameters.AddWithValue("@TenMH", TenMH);
                command.Parameters.Add("@DonGia", SqlDbType.Money).Value = DonGia;
                command.Parameters.Add("@GiaNhap", SqlDbType.Money).Value = GiaNhap;
                command.Parameters.AddWithValue("@HinhAnh", ResizeImage(HinhAnh));
                command.Parameters.AddWithValue("@ChatLuong", ChatLuong);
                command.Parameters.AddWithValue("@LoaiPT", LoaiPT);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Sửa không thành công", "Sửa Phụ Tùng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show("Sửa thành công", "Sửa Phụ Tùng", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (SqlException ex)
                { 
                    MessageBox.Show(ex.Message, "Sửa Phụ Tùng", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }

            }

        }
        public byte[] ResizeImage(byte[] imageData)
        {
            int width = 100;
            int height = 100;

            using (var ms = new MemoryStream(imageData))
            {
                using (var image = Image.FromStream(ms))
                {
                    using (var bitmap = new Bitmap(image))
                    {
                        // create a thumbnail of the image
                        Image thumbnail = bitmap.GetThumbnailImage(width, height, null, IntPtr.Zero);

                        // save the thumbnail to a new byte array
                        using (var thumbMs = new MemoryStream())
                        {
                            thumbnail.Save(thumbMs, ImageFormat.Jpeg); // or use another format if desired
                            byte[] thumbnailData = thumbMs.ToArray();

                            // return the thumbnail data
                            return thumbnailData;
                        }
                    }
                }
            }
        }
        public DataTable LayDS()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select * From vw_DSPhuTung", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDS(string TenPT, string HSX, string ChatLuong, string LoaiPT)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM dbo.fn_DSPhuTung(@TenPT, @HSX, @ChatLuong, @LoaiPT)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@TenPT", TenPT);
                adapter.SelectCommand.Parameters.AddWithValue("@HSX", HSX);
                adapter.SelectCommand.Parameters.AddWithValue("@ChatLuong", ChatLuong);
                adapter.SelectCommand.Parameters.AddWithValue("@LoaiPT", LoaiPT);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }

        internal DataTable LayDSTrenPhieuNhap()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select  MaMH,HinhAnh,TenMH, HSX,GiaNhap,LoaiPT,ChatLuong  From vw_DSPhuTung", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        internal DataTable LayDSTrenHoaDon()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select  MaMH,TenMH,  DonGia,HinhAnh,HSX,LoaiPT,ChatLuong  From vw_DSPhuTung", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
    }
}
