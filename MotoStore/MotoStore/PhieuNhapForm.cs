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
    public partial class PhieuNhapForm : Form
    {
        Receipt receipt = new Receipt();
        public PhieuNhapForm()
        {
            InitializeComponent();
        }

        private void PhieuNhapForm_Load(object sender, EventArgs e)
        {
            dgvPhieuNhap.DataSource = receipt.LayDS();
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string MaNV = txtMaNV.Text;
            string TenNV = txtTenNV.Text;
            string TenNCC = txtTenNCC.Text;
            string SDT = txtSDT.Text;
            DateTime? BatDau = null;
            DateTime? KetThuc = null;
            if (chkTimKiemTheoNgay.Checked)
            {
                BatDau = dtpBatDau.Value.Date;
                KetThuc = dtpKetThuc.Value.Date;
            }
            dgvPhieuNhap.DataSource = receipt.LayDS(MaNV, TenNV, TenNCC,SDT,BatDau,KetThuc);
        }
        private void dgvPhieuNhap_Click(object sender, EventArgs e)
        {
            Form chiTietPhieuNhapForm = new ChiTietPhieuNhapForm(dgvPhieuNhap.CurrentRow.Cells);
            chiTietPhieuNhapForm.ShowDialog();
            PhieuNhapForm_Load(sender, e);
        }
        private void btnThemPhieuNhap_Click(object sender, EventArgs e)
        {
            Form themPhieuNhapForm = new ThemPhieuNhapForm();
            this.Hide();
            themPhieuNhapForm.ShowDialog();
            PhieuNhapForm_Load(sender, e);
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
