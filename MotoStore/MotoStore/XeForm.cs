using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    public partial class XeForm : Form
    {
        Moto moto = new Moto();
        public XeForm()
        {
            InitializeComponent();
        }

        private void btnChonAnh_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.Filter = "Image files (*.jpg, *.jpeg, *.jpe, *.jfif, *.png, *.bmp) | *.jpg; *.jpeg; *.jpe; *.jfif; *.png; *.bmp";

            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                string imagePath = openFileDialog1.FileName;
                picXe.Image = Image.FromFile(imagePath);
            }
        }

        private void btnXoaAnh_Click(object sender, EventArgs e)
        {
            picXe.Image = null;
        }

        private void SetupAutoComplete(TextBox textBox, string columnName, DataTable dataTable)
        {
            string[] columnValues = dataTable.AsEnumerable()
                                        .Select(row => row.Field<string>(columnName))
                                        .Distinct()
                                        .ToArray();
            AutoCompleteStringCollection autoComplete = new AutoCompleteStringCollection();
            autoComplete.AddRange(columnValues);
            textBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            textBox.AutoCompleteCustomSource = autoComplete;
        }

        private void btnThemXe_Click(object sender, EventArgs e)
        {
            this.txtMaXe.Clear();
            if (MessageBox.Show("Bạn có chắc chắn muốn thêm mới không?", "Xác nhận thêm mới", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (!Regex.IsMatch(txtGiaNhap.Text, @"^[0-9,]+$") || !Regex.IsMatch(txtDonGia.Text, @"^[0-9,]+$"))
            {
                MessageBox.Show("Đơn giá và Giá nhập phải là 1 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string HSX = txtHSX.Text;
                string TenXe = txtTenXe.Text;
                decimal GiaNhap = Convert.ToDecimal(txtGiaNhap.Text);
                decimal DonGia = Convert.ToDecimal(txtDonGia.Text);
                string LoaiXe = txtLoaiXe.Text;
                string MauSac = txtMauSac.Text;
                string KhoiLuong = txtKhoiLuongBanThan.Text;
                string KhoangCachTrucBanhXe = txtKhoangCachTrucBanhXe.Text;
                string KhoangSangGamXe = txtKhoangSangGamXe.Text;
                string DungTichBinhXang = txtDungTichBinhXang.Text;
                string KichCoLopTruoc = txtKichCoLopTruoc.Text;
                string KichCoLopSau = txtKichCoLopSau.Text;
                string HeThongKhoiDong = txtHeThongKhoiDong.Text;
                string MomentCucDai = txtMomentCucDai.Text;
                string DungTichXiLanh = txtDungTichXiLanh.Text;
                string TiSoNen = txtTiSoNen.Text;
                string DxRxC = txtDxRxC.Text;
                string DoCaoYenXe = txtDoCaoYenXe.Text;
                string PhuocTruoc = txtPhuocTruoc.Text;
                string PhuocSau = txtPhuocSau.Text;
                string LoaiDongCo = txtLoaiDongCo.Text;
                string CongSuatToiDa = txtCongSuatToiDa.Text;
                string DungTichNhot = txtDungTichNhotMay.Text;
                string LoaiTruyenDong = txtLoaiTruyenDong.Text;
                string CongNgheDongCo = txtCongNgheDongCo.Text;
                string DuongKinhxHanhTrinhPitTong = txtDuongKinhXHanhTrinhPitTong.Text;
                Image image = picXe.Image;
                using (MemoryStream ms = new MemoryStream())
                {
                    image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                    byte[] HinhAnh = ms.ToArray();
                    moto.Insert(HSX, TenXe, DonGia, GiaNhap, HinhAnh, LoaiXe, MauSac, KhoiLuong, DxRxC, KhoangCachTrucBanhXe, DoCaoYenXe, KhoangSangGamXe, DungTichBinhXang,
                    KichCoLopTruoc, KichCoLopSau, PhuocTruoc, PhuocSau, LoaiDongCo, CongSuatToiDa, DungTichNhot, LoaiTruyenDong, HeThongKhoiDong, MomentCucDai, DungTichXiLanh,
                    DuongKinhxHanhTrinhPitTong, TiSoNen, CongNgheDongCo);
                }
                LocXe();
            }
        }
        private bool checkEmpty()
        {
            if (txtHSX.Text.Trim() == "" || txtTenXe.Text.Trim() == "" || txtGiaNhap.Text.Trim() == "" || txtDonGia.Text.Trim() == "" || txtLoaiXe.Text.Trim() == "" || txtMauSac.Text.Trim() == "" || txtKhoiLuongBanThan.Text.Trim() == "" || txtKhoangCachTrucBanhXe.Text.Trim() == "" || txtKhoangSangGamXe.Text.Trim() == "" || txtDungTichBinhXang.Text.Trim() == "" || txtKichCoLopTruoc.Text.Trim() == "" || txtKichCoLopSau.Text.Trim() == "" || txtHeThongKhoiDong.Text.Trim() == "" || txtMomentCucDai.Text.Trim() == "" || txtDungTichXiLanh.Text.Trim() == "" || txtTiSoNen.Text.Trim() == "" || txtDxRxC.Text.Trim() == "" || txtDoCaoYenXe.Text.Trim() == "" || txtPhuocTruoc.Text.Trim() == "" || txtPhuocSau.Text.Trim() == "" || txtLoaiDongCo.Text.Trim() == "" || txtCongSuatToiDa.Text.Trim() == "" || txtDungTichNhotMay.Text.Trim() == "" || txtLoaiTruyenDong.Text.Trim() == "" || txtCongNgheDongCo.Text.Trim() == "" || txtDuongKinhXHanhTrinhPitTong.Text.Trim() == "" || picXe.Image == null)
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin Phụ tùng.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return true;
            }
            else
            {
                return false;
            }
        }

        private void btnSuaXe_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn chỉnh sửa không?", "Xác nhận chỉnh sửa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (txtMaXe.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn xe", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!Regex.IsMatch(txtGiaNhap.Text, @"^[0-9,]+$") || !Regex.IsMatch(txtDonGia.Text, @"^[0-9,]+$"))
            {
                MessageBox.Show("Đơn giá và Giá nhập phải là 1 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string MaXe = txtMaXe.Text;
                string HSX = txtHSX.Text;
                string TenXe = txtTenXe.Text;
                decimal GiaNhap = Convert.ToDecimal(txtGiaNhap.Text);
                decimal DonGia = Convert.ToDecimal(txtDonGia.Text);
                string LoaiXe = txtLoaiXe.Text;
                string MauSac = txtMauSac.Text;
                string KhoiLuong = txtKhoiLuongBanThan.Text;
                string KhoangCachTrucBanhXe = txtKhoangCachTrucBanhXe.Text;
                string KhoangSangGamXe = txtKhoangSangGamXe.Text;
                string DungTichBinhXang = txtDungTichBinhXang.Text;
                string KichCoLopTruoc = txtKichCoLopTruoc.Text;
                string KichCoLopSau = txtKichCoLopSau.Text;
                string HeThongKhoiDong = txtHeThongKhoiDong.Text;
                string MomentCucDai = txtMomentCucDai.Text;
                string DungTichXiLanh = txtDungTichXiLanh.Text;
                string TiSoNen = txtTiSoNen.Text;
                string DxRxC = txtDxRxC.Text;
                string DoCaoYenXe = txtDoCaoYenXe.Text;
                string PhuocTruoc = txtPhuocTruoc.Text;
                string PhuocSau = txtPhuocSau.Text;
                string LoaiDongCo = txtLoaiDongCo.Text;
                string CongSuatToiDa = txtCongSuatToiDa.Text;
                string DungTichNhot = txtDungTichNhotMay.Text;
                string LoaiTruyenDong = txtLoaiTruyenDong.Text;
                string CongNgheDongCo = txtCongNgheDongCo.Text;
                string DuongKinhxHanhTrinhPitTong = txtDuongKinhXHanhTrinhPitTong.Text;
                Image image = picXe.Image;
                using (MemoryStream ms = new MemoryStream())
                {
                    image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                    byte[] HinhAnh = ms.ToArray();
                    moto.Update(MaXe, HSX, TenXe, DonGia, GiaNhap, HinhAnh, LoaiXe, MauSac, KhoiLuong, DxRxC, KhoangCachTrucBanhXe, DoCaoYenXe, KhoangSangGamXe, DungTichBinhXang,
                    KichCoLopTruoc, KichCoLopSau, PhuocTruoc, PhuocSau, LoaiDongCo, CongSuatToiDa, DungTichNhot, LoaiTruyenDong, HeThongKhoiDong, MomentCucDai, DungTichXiLanh,
                    DuongKinhxHanhTrinhPitTong, TiSoNen, CongNgheDongCo);
                }
                LocXe();
            }
        }
        private void btnThemAnh_Click(object sender, EventArgs e)
        {
            try
            {
                byte[] HinhAnh = new WebClient().DownloadData(txtLinkAnh.Text);
                MemoryStream stream = new MemoryStream(HinhAnh);
                picXe.Image = Image.FromStream(stream);
            }
            catch
            {
                MessageBox.Show("Link ảnh không đúng", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void XeForm_Load(object sender, EventArgs e)
        {
            LocXe();
            if (MenuForm.chucVu == "Nhân viên tư vấn")
            {
                this.txtLinkAnh.Enabled = false;
                this.btnThemAnh.Enabled = false;
                this.btnChonAnh.Enabled = false;
                this.btnXoaAnh.Enabled = false;
                this.btnThemXe.Enabled = false;
                this.btnSuaXe.Enabled = false;
            }
        }

        public void LocXe()
        {
            dgvXe.DataSource = moto.LayDS();
        }

        private void dgvXe_Click(object sender, EventArgs e)
        {
            Image image = picXe.Image;
            if (dgvXe.CurrentRow != null)
            {
                DataGridViewRow row = dgvXe.CurrentRow;
                if (row.Cells["MaMH"].Value.ToString() != "")
                {
                    byte[] data = (byte[])dgvXe.CurrentRow.Cells["HinhAnh"].Value;
                    picXe.Image = Image.FromStream(new MemoryStream(data));
                    txtMaXe.Text = row.Cells["MaMH"].Value.ToString();
                    txtHSX.Text = row.Cells["HSX"].Value.ToString();
                    txtTenXe.Text = row.Cells["TenMH"].Value.ToString();
                    txtGiaNhap.Text = Convert.ToDecimal(row.Cells["GiaNhap"].Value).ToString("#");
                    txtDonGia.Text = Convert.ToDecimal(row.Cells["DonGia"].Value).ToString("#");
                    txtLoaiXe.Text = row.Cells["LoaiXe"].Value.ToString();
                    txtMauSac.Text = row.Cells["MauSac"].Value.ToString();
                    txtKhoiLuongBanThan.Text = row.Cells["KhoiLuongBanThan"].Value.ToString();
                    txtKhoangCachTrucBanhXe.Text = row.Cells["KhoangCachTrucBanhXe"].Value.ToString();
                    txtKhoangSangGamXe.Text = row.Cells["KhoangSangGamXe"].Value.ToString();
                    txtDungTichBinhXang.Text = row.Cells["DungTichBinhXang"].Value.ToString();
                    txtKichCoLopTruoc.Text = row.Cells["KichCoLopTruoc"].Value.ToString();
                    txtKichCoLopSau.Text = row.Cells["KichCoLopSau"].Value.ToString();
                    txtHeThongKhoiDong.Text = row.Cells["HeThongKhoiDong"].Value.ToString();
                    txtMomentCucDai.Text = row.Cells["MomentCucDai"].Value.ToString();
                    txtDungTichXiLanh.Text = row.Cells["DungTichXiLanh"].Value.ToString();
                    txtTiSoNen.Text = row.Cells["TySoNen"].Value.ToString();
                    txtDxRxC.Text = row.Cells["DxRxC"].Value.ToString();
                    txtDoCaoYenXe.Text = row.Cells["DoCaoYen"].Value.ToString();
                    txtPhuocTruoc.Text = row.Cells["PhuocTruoc"].Value.ToString();
                    txtPhuocSau.Text = row.Cells["PhuocSau"].Value.ToString();
                    txtLoaiDongCo.Text = row.Cells["LoaiDongCo"].Value.ToString();
                    txtCongSuatToiDa.Text = row.Cells["CongSuatToiDa"].Value.ToString();
                    txtDungTichNhotMay.Text = row.Cells["DungTichNhotMay"].Value.ToString();
                    txtLoaiTruyenDong.Text = row.Cells["LoaiTruyenDong"].Value.ToString();
                    txtCongNgheDongCo.Text = row.Cells["DongCoCongNghe"].Value.ToString();
                    txtDuongKinhXHanhTrinhPitTong.Text = row.Cells["DuongKinhxHanhTrinhPitTong"].Value.ToString();
                }
            }
        }
    }
}
