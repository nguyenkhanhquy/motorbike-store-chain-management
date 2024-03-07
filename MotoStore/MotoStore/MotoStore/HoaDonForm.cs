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
            dgvHoaDon.Columns["TraGop"].HeaderText = "Trả góp";
        }
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            bool? TraGop = rbtnCo.Checked ? true : rbtnKhong.Checked ? false : (bool?)null;
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
            dgvHoaDon.DataSource = invoice.LayDS(TraGop, MaNV, TenNV, TenKH, SDTKH, BatDau, KetThuc);
        }
        private void xemChiTiếtHóaĐơnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ChiTietHoaDonForm chiTietHoaDonForm = new ChiTietHoaDonForm();
            chiTietHoaDonForm.MaHD = dgvHoaDon.CurrentRow.Cells["MaHD"].Value.ToString();
            chiTietHoaDonForm.Show();
        }

        

       

       
    }
}
