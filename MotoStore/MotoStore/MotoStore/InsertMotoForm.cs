using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;
using LicenseContext = OfficeOpenXml.LicenseContext;

namespace MotoStore
{
    public partial class InsertMotoForm : Form
    {
        Moto Moto = new Moto();
        public InsertMotoForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
            var package = new ExcelPackage(new FileInfo("C:\\Users\\huynh\\Downloads\\XE.xlsx"));
            var worksheet = package.Workbook.Worksheets[0];
            int row = 3;
            while (worksheet.Cells[row, 1].Value != null)
            {
                string HSX = worksheet.Cells[row, 1].Value.ToString();
                string TenMH = worksheet.Cells[row, 2].Value.ToString();
                decimal DonGia = Convert.ToDecimal(worksheet.Cells[row, 3].Value);
                decimal GiaNhap = Convert.ToDecimal(worksheet.Cells[row, 4].Value);
                byte[] HinhAnh = new WebClient().DownloadData(worksheet.Cells[row, 5].Value.ToString());
                string LoaiXe = worksheet.Cells[row, 6].Value.ToString();
                string MauSac = worksheet.Cells[row, 7].Value.ToString();
                string KhoiLuongBanThan = worksheet.Cells[row, 8].Value.ToString();
                string DxRxC = worksheet.Cells[row, 9].Value.ToString();
                string KhoangCachTrucBanhXe = worksheet.Cells[row, 10].Value.ToString();
                string DoCaoYen = worksheet.Cells[row, 11].Value.ToString();
                string KhoangSangGamXe = worksheet.Cells[row, 12].Value.ToString();
                string DungTichBinhXang = worksheet.Cells[row, 13].Value.ToString();
                string KichCoLopTruoc = worksheet.Cells[row, 14].Value.ToString();
                string KichCoLopSau = worksheet.Cells[row, 15].Value.ToString();
                string PhuocTruoc = worksheet.Cells[row, 16].Value.ToString();
                string PhuocSau = worksheet.Cells[row, 17].Value.ToString();
                string LoaiDongCo = worksheet.Cells[row, 18].Value.ToString();
                string CongSuatToiDa = worksheet.Cells[row, 19].Value.ToString();
                string DungTichNhotMay = worksheet.Cells[row, 20].Value.ToString();
                string LoaiTruyenDong = worksheet.Cells[row, 21].Value.ToString();
                string HeThongKhoiDong = worksheet.Cells[row, 22].Value.ToString();
                string MomentCucDai = worksheet.Cells[row, 23].Value.ToString();
                string DungTichXiLanh = worksheet.Cells[row, 24].Value.ToString();
                string DuongKinhxHanhTrinhPitTong = worksheet.Cells[row, 25].Value.ToString();
                string TySoNen = worksheet.Cells[row, 26].Value.ToString();
                string DongCoCongNghe = worksheet.Cells[row, 27].Value.ToString();
                Moto.Insert(HSX, TenMH, DonGia, GiaNhap, HinhAnh, LoaiXe, MauSac, KhoiLuongBanThan, DxRxC, KhoangCachTrucBanhXe, DoCaoYen, KhoangSangGamXe, DungTichBinhXang, KichCoLopTruoc, KichCoLopSau, PhuocTruoc, PhuocSau, LoaiDongCo, CongSuatToiDa, DungTichNhotMay, LoaiTruyenDong, HeThongKhoiDong, MomentCucDai, DungTichXiLanh, DuongKinhxHanhTrinhPitTong, TySoNen, DongCoCongNghe);
                row++;
            }
        }

        private void InsertMotoForm_Load(object sender, EventArgs e)
        {

        }
    }
}
