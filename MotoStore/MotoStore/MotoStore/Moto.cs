using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    internal class Moto
    {
        MyDB db = new MyDB();
        public void Insert(string HSX, string TenMH, decimal DonGia, decimal  GiaNhap, byte[] HinhAnh, string LoaiXe, string MauSac, string KhoiLuongBanThan, string DxRxC, string KhoangCachTrucBanhXe, string DoCaoYen, string KhoangSangGamXe, string DungTichBinhXang, string KichCoLopTruoc, string KichCoLopSau, string PhuocTruoc, string PhuocSau, string LoaiDongCo, string CongSuatToiDa, string DungTichNhotMay, string LoaiTruyenDong, string HeThongKhoiDong, string MomentCucDai, string DungTichXiLanh, string DuongKinhxHanhTrinhPitTong, string TySoNen, string DongCoCongNghe)
        {
            try
            {
                SqlCommand command = new SqlCommand("sp_ThemXe", db.Connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@HSX", HSX);
                command.Parameters.AddWithValue("@TenMH", TenMH);
                command.Parameters.Add("@DonGia", SqlDbType.Money).Value = DonGia;
                command.Parameters.Add("@GiaNhap", SqlDbType.Money).Value = GiaNhap;
                command.Parameters.AddWithValue("@HinhAnh", HinhAnh);
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
                db.Open();
                command.ExecuteNonQuery();
                if (command.ExecuteNonQuery() == 0)
                {
                    MessageBox.Show("Thêm không thành công", "Thêm Xe", MessageBoxButtons.OK, MessageBoxIcon.Error);

                }
                else
                {
                    //MessageBox.Show("Thêm thành công", "Thêm Xe", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Thêm Xe", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        public DataTable GetMoto(string condition)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_Xe where vw_Xe.LoaiXe = N'{condition}'", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable GetMoto()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_Xe", db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable GetInfoMoto(string MaMH)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"SELECt * FROM dbo.fn_ThongSoKyThuatXe('{MaMH}')",db.Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }

    }
}


