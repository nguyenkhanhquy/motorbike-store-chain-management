using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    public partial class HoaDonForm : Form
    {
        Invoice invoice = new Invoice();
        public HoaDonForm()
        {
            InitializeComponent();
        }
        private void HoaDonForm_Load(object sender, EventArgs e)
        {
            dgvHoaDon.DataSource = invoice.LayDS();
            dgvHoaDon.Columns["MaHD"].HeaderText = "Mã hóa đơn";
            dgvHoaDon.Columns["TenKH"].HeaderText = "Tên khách hàng";
            dgvHoaDon.Columns["SDT"].HeaderText = "Số điện thoại";
            dgvHoaDon.Columns["TenNV"].HeaderText = "Tên nhân viên";
            dgvHoaDon.Columns["MaNV"].HeaderText = "Mã nhân viên";
            dgvHoaDon.Columns["NgayLap"].HeaderText = "Ngày lập hóa đơn";
            dgvHoaDon.Columns["ThanhTien"].HeaderText = "Thành tiền";
            dgvHoaDon.Columns["TenCN"].HeaderText = "Tên chi nhánh";
            dgvHoaDon.Columns["DiaChi"].HeaderText = "Địa Chỉ";
            dgvHoaDon.Columns["MaKH"].HeaderText = "Mã khách hàng";
        }
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            
            string MaNV = txtMaNV.Text;
            string TenNV = txtTenNV.Text;
            string TenKH = txtTenKH.Text;
            string SDTKH=txtSDTKH.Text;
            DateTime? BatDau=null;
            DateTime? KetThuc=null;
            if (chkTimKiemTheoNgay.Checked)
            {
                BatDau = dtpBatDau.Value.Date;
                KetThuc = dtpKetThuc.Value.Date;
            }
            dgvHoaDon.DataSource = invoice.LayDS(MaNV, TenNV, TenKH, SDTKH, BatDau, KetThuc);
        }
        private void xemChiTiếtHóaĐơnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ChiTietHoaDonForm chiTietHoaDonForm = new ChiTietHoaDonForm(dgvHoaDon.CurrentRow.Cells);
            chiTietHoaDonForm.Show();
        }

        private void sửaHóaĐơnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ThemChiTietHoaDonForm suaChiTietHoaDonForm = new ThemChiTietHoaDonForm(dgvHoaDon.CurrentRow.Cells[0].Value.ToString());
            suaChiTietHoaDonForm.ShowDialog();
        }

        private void btnThemHoaDon_Click(object sender, EventArgs e)
        {
            Form themHoaDonForm = new ThemHoaDonForm();
            this.Hide();
            themHoaDonForm.ShowDialog();
            HoaDonForm_Load(sender, e);
            this.Show();
        }
        private void chkTimKiemTheoNgay_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkTimKiemTheoNgay.Checked == true)
            {
                this.dtpBatDau.Enabled = true;
                this.dtpKetThuc.Enabled = true;
            }
            else
            {
                this.dtpBatDau.ResetText();
                this.dtpBatDau.Enabled = false;

                this.dtpKetThuc.ResetText();
                this.dtpKetThuc.Enabled = false;
            }
        }
        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
