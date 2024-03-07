using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    internal class Moto
    {
        MyDB db = new MyDB();
        public void Insert(string HSX, string TenMH, decimal DonGia, decimal GiaNhap, byte[] HinhAnh, string LoaiXe, string MauSac, string KhoiLuongBanThan, string DxRxC, string KhoangCachTrucBanhXe, string DoCaoYen, string KhoangSangGamXe, string DungTichBinhXang, string KichCoLopTruoc, string KichCoLopSau, string PhuocTruoc, string PhuocSau, string LoaiDongCo, string CongSuatToiDa, string DungTichNhotMay, string LoaiTruyenDong, string HeThongKhoiDong, string MomentCucDai, string DungTichXiLanh, string DuongKinhxHanhTrinhPitTong, string TySoNen, string DongCoCongNghe)
        {

            using (SqlCommand command = new SqlCommand("sp_ThemXe", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@HSX", HSX);
                command.Parameters.AddWithValue("@TenMH", TenMH);
                command.Parameters.Add("@DonGia", SqlDbType.Money).Value = DonGia;
                command.Parameters.Add("@GiaNhap", SqlDbType.Money).Value = GiaNhap;
                command.Parameters.AddWithValue("@HinhAnh", ResizeImage(HinhAnh));
                command.Parameters.AddWithValue("@LoaiXe", LoaiXe);
                command.Parameters.AddWithValue("@MauSac", MauSac);
                command.Parameters.AddWithValue("@KhoiLuongBanThan", KhoiLuongBanThan);
                command.Parameters.AddWithValue("@DxRxC", DxRxC);
                command.Parameters.AddWithValue("@KhoangCachTrucBanhXe", KhoangCachTrucBanhXe);
                command.Parameters.AddWithValue("@DoCaoYen", DoCaoYen);
                command.Parameters.AddWithValue("@KhoangSangGamXe", KhoangSangGamXe);
                command.Parameters.AddWithValue("@DungTichBinhXang", DungTichBinhXang);
                command.Parameters.AddWithValue("@KichCoLopTruoc", KichCoLopTruoc);
                command.Parameters.AddWithValue("@KichCoLopSau", KichCoLopSau);
                command.Parameters.AddWithValue("@PhuocTruoc", PhuocTruoc);
                command.Parameters.AddWithValue("@PhuocSau", PhuocSau);
                command.Parameters.AddWithValue("@LoaiDongCo", LoaiDongCo);
                command.Parameters.AddWithValue("@CongSuatToiDa", CongSuatToiDa);
                command.Parameters.AddWithValue("@DungTichNhotMay", DungTichNhotMay);
                command.Parameters.AddWithValue("@LoaiTruyenDong", LoaiTruyenDong);
                command.Parameters.AddWithValue("@HeThongKhoiDong", HeThongKhoiDong);
                command.Parameters.AddWithValue("@MomentCucDai", MomentCucDai);
                command.Parameters.AddWithValue("@DungTichXiLanh", DungTichXiLanh);
                command.Parameters.AddWithValue("@DuongKinhxHanhTrinhPitTong", DuongKinhxHanhTrinhPitTong);
                command.Parameters.AddWithValue("@TySoNen", TySoNen);
                command.Parameters.AddWithValue("@DongCoCongNghe", DongCoCongNghe);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Thêm không thành công", "Thêm Xe", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show("Thêm thành công", "Thêm Xe", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Thêm Xe", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally { db.Close(); }

                
            }

        }
        public void Update(string MaMH, string HSX, string TenMH, decimal DonGia, decimal GiaNhap, byte[] HinhAnh, string LoaiXe, string MauSac, string KhoiLuongBanThan, string DxRxC, string KhoangCachTrucBanhXe, string DoCaoYen, string KhoangSangGamXe, string DungTichBinhXang, string KichCoLopTruoc, string KichCoLopSau, string PhuocTruoc, string PhuocSau, string LoaiDongCo, string CongSuatToiDa, string DungTichNhotMay, string LoaiTruyenDong, string HeThongKhoiDong, string MomentCucDai, string DungTichXiLanh, string DuongKinhxHanhTrinhPitTong, string TySoNen, string DongCoCongNghe)
        {

            using (SqlCommand command = new SqlCommand("sp_SuaXe", db.Connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@MaMH", MaMH);
                command.Parameters.AddWithValue("@HSX", HSX);
                command.Parameters.AddWithValue("@TenMH", TenMH);
                command.Parameters.Add("@DonGia", SqlDbType.Money).Value = DonGia;
                command.Parameters.Add("@GiaNhap", SqlDbType.Money).Value = GiaNhap;
                command.Parameters.AddWithValue("@HinhAnh", ResizeImage(HinhAnh));
                command.Parameters.AddWithValue("@LoaiXe", LoaiXe);
                command.Parameters.AddWithValue("@MauSac", MauSac);
                command.Parameters.AddWithValue("@KhoiLuongBanThan", KhoiLuongBanThan);
                command.Parameters.AddWithValue("@DxRxC", DxRxC);
                command.Parameters.AddWithValue("@KhoangCachTrucBanhXe", KhoangCachTrucBanhXe);
                command.Parameters.AddWithValue("@DoCaoYen", DoCaoYen);
                command.Parameters.AddWithValue("@KhoangSangGamXe", KhoangSangGamXe);
                command.Parameters.AddWithValue("@DungTichBinhXang", DungTichBinhXang);
                command.Parameters.AddWithValue("@KichCoLopTruoc", KichCoLopTruoc);
                command.Parameters.AddWithValue("@KichCoLopSau", KichCoLopSau);
                command.Parameters.AddWithValue("@PhuocTruoc", PhuocTruoc);
                command.Parameters.AddWithValue("@PhuocSau", PhuocSau);
                command.Parameters.AddWithValue("@LoaiDongCo", LoaiDongCo);
                command.Parameters.AddWithValue("@CongSuatToiDa", CongSuatToiDa);
                command.Parameters.AddWithValue("@DungTichNhotMay", DungTichNhotMay);
                command.Parameters.AddWithValue("@LoaiTruyenDong", LoaiTruyenDong);
                command.Parameters.AddWithValue("@HeThongKhoiDong", HeThongKhoiDong);
                command.Parameters.AddWithValue("@MomentCucDai", MomentCucDai);
                command.Parameters.AddWithValue("@DungTichXiLanh", DungTichXiLanh);
                command.Parameters.AddWithValue("@DuongKinhxHanhTrinhPitTong", DuongKinhxHanhTrinhPitTong);
                command.Parameters.AddWithValue("@TySoNen", TySoNen);
                command.Parameters.AddWithValue("@DongCoCongNghe", DongCoCongNghe);
                try
                {
                    db.Open();
                    if (command.ExecuteNonQuery() == 0)
                    {
                        MessageBox.Show("Sửa không thành công", "Sửa Xe", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show("Sửa thành công", "Sửa Xe", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Sửa Xe", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                        Image thumbnail = bitmap.GetThumbnailImage(width, height, null, IntPtr.Zero);
                        using (var thumbMs = new MemoryStream())
                        {
                            thumbnail.Save(thumbMs, ImageFormat.Jpeg); 
                            byte[] thumbnailData = thumbMs.ToArray();
                            return thumbnailData;
                        }
                    }
                }
            }
        }
        public DataTable LayDS()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select * From vw_DSXe", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDS(string LoaiXe)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select * From fn_DSXe(@LoaiXe)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@LoaiXe", LoaiXe);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDSTrenPhieuNhap(string LoaiXe)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select MaMH, HinhAnh, TenMH, HSX, GiaNhap, LoaiXe, MauSac From fn_DSXe(@LoaiXe)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@LoaiXe", LoaiXe);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDSTrenPhieuNhap()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select MaMH, HinhAnh, TenMH, HSX, GiaNhap, LoaiXe, MauSac From vw_DSXe", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDSTrenHoaDon(string LoaiXe)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select MaMH,  TenMH, DonGia, MauSac, HSX, HinhAnh, LoaiXe From fn_DSXe(@LoaiXe)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@LoaiXe", LoaiXe);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable LayDSTrenHoaDon()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("Select MaMH,  TenMH, DonGia, MauSac, HSX, HinhAnh, LoaiXe From vw_DSXe", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable GetInfoMoto(string MaMH)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECt * FROM dbo.fn_XemThongSoKyThuatXe(@MaMH)", db.Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaMH", MaMH);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }

    }
}


