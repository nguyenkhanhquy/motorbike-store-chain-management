using DocumentFormat.OpenXml.Office2010.Drawing;
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
    public partial class ThemPhieuNhapForm : Form
    {
        private Employee employee = new Employee();
        MyDB dB = new MyDB();
        Receipt receipt = new Receipt();
        public ThemPhieuNhapForm()
        {
            InitializeComponent();
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

        private void PhieuNhap_Load(object sender, EventArgs e)
        {
            this.cbbTenNCC.DataSource = dB.LayDSNhaCungCap();
            this.cbbTenNCC.DisplayMember = "TenNCC";
            this.cbbTenNCC.ValueMember = "MaNCC";
            this.txtMaNV.Text = DangNhapForm.user;
            this.cbbTenNCC.SelectedIndex = -1;
        }

        private void cbbTenNCC_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbTenNCC.SelectedIndex != -1)
            {
                try
                {
                    DataTable dataTable = dB.ThongTinNhaCungCap(cbbTenNCC.SelectedValue.ToString());
                    if (dataTable.Rows.Count > 0)
                    {
                        txtMaNCC.Text = dataTable.Rows[0]["MaNCC"].ToString();
                        txtSDT.Text = dataTable.Rows[0]["SDT"].ToString();
                        txtDiaChi.Text = dataTable.Rows[0]["DiaChi"].ToString();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnThemPhieuNhap_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn thêm mới không?", "Xác nhận thêm mới", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (txtMaNCC.Text.Trim() == "" || txtMaNV.Text.Trim() == "")
            {
                MessageBox.Show("Vui Lòng Nhập đấy đủ Mã Nhà Cung và Mã Nhân Viên", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            string MaNCC = txtMaNCC.Text;
            string MaNV = txtMaNV.Text;
            DateTime NgayNhap = dtpNgayNhap.Value;
            if (receipt.Insert(MaNCC, MaNV, NgayNhap))
            {
                Form themChiTietPhieuNhapForm = new ThemChiTietPhieuNhapForm(receipt.MaPhieuNhapCuoiCung());
                themChiTietPhieuNhapForm.ShowDialog();
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
