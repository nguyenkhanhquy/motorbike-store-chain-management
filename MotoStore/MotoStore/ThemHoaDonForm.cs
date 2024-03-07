using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    public partial class ThemHoaDonForm : Form
    {
        Customer customer=new Customer();
        Employee employee=new Employee();
        Invoice invoice=new Invoice();
        public ThemHoaDonForm()
        {
            InitializeComponent();
        }

        private void ThemHoaDonForm_Load(object sender, EventArgs e)
        {
            this.txtMaNV.Text = DangNhapForm.user;
            this.cbbTimKiem.SelectedIndex = 0;
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            DataTable table= customer.LayDS(cbbTimKiem.Text,txtTimKiem.Text);
            if (table.Rows.Count > 0)
            {
                txtCCCD.Text = table.Rows[0]["CCCD"].ToString();
                txtSDT.Text = table.Rows[0]["SDT"].ToString();
                txtTenKH.Text = table.Rows[0]["TenKH"].ToString();
                txtMaKH.Text = table.Rows[0]["MaKH"].ToString();
                txtDiaChi.Text= table.Rows[0]["DiaChi"].ToString();
            }
            else
            {
               if (MessageBox.Show("Không tìm thấy khách hàng!\n\nCó muốn thêm khách hàng không?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
               {
                    KhachHangForm khachHangForm = new KhachHangForm();
                    khachHangForm.ShowDialog();
               }
            }
        }

        private void txtMaNV_TextChanged(object sender, EventArgs e)
        {
            if (txtMaNV.Text.Length <= 6)
                return;
            DataTable table = employee.LayThongTinNhanVien(txtMaNV.Text);
            
                if (table.Rows.Count > 0)
                {
                    txtTenCN.Text = table.Rows[0]["TenCN"].ToString();
                    txtTenNV.Text = table.Rows[0]["TenNV"].ToString();
                }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn thêm mới không?", "Xác nhận thêm mới", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (txtMaKH.Text.Trim() == "" || txtMaNV.Text.Trim() == "")
            {
                MessageBox.Show("Vui Lòng Nhập đấy đủ Mã Khách Hàng và Mã Nhân Viên", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }    
            string MaKH=txtMaKH.Text;
            string MaNV=txtMaNV.Text;
            DateTime NgayLap=dtpNgayLapHD.Value;
            if (invoice.Insert(MaKH, MaNV, NgayLap))
            {
                Form themChiTietHoaDonForm = new ThemChiTietHoaDonForm(invoice.MaHoaDonCuoiCung());
                themChiTietHoaDonForm.ShowDialog();
            }
        }
        private void cbbTimKiem_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.txtTimKiem.Clear();
            if (this.cbbTimKiem.SelectedIndex == 0)
                this.txtTimKiem.MaxLength = 10;
            else
                this.txtTimKiem.MaxLength = 12;
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
