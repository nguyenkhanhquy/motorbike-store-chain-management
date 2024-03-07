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
    public partial class KhachHangForm : Form
    {
        Customer customer = new Customer();
        public KhachHangForm()
        {
            InitializeComponent();
        }
        private void KhachHangForm_Load(object sender, EventArgs e)
        {
            dgvKhachHang.DataSource = customer.LayDS();
        }
        public bool checkEmpty()
        {
            if (txtTenKH.Text.Trim() == "" || txtDiaChi.Text.Trim() == "" || txtSDT.Text.Trim() == "" || cbbGioiTinh.Text.Trim() == "" || txtCCCD.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin khách hàng.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return true;
            }
            else
            {
                return false;
            }
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            this.txtMaKH.Clear();
            if (MessageBox.Show("Bạn có chắc chắn muốn thêm mới không?", "Xác nhận thêm mới", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (!checkEmpty())
            {
                string TenKH = txtTenKH.Text;
                string CCCD = txtCCCD.Text;
                string SDT = txtSDT.Text;
                string GioiTinh = cbbGioiTinh.Text;
                string DiaChi = txtDiaChi.Text;
                customer.Insert(TenKH, SDT, GioiTinh, CCCD, DiaChi);
                KhachHangForm_Load(sender, e);
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn chỉnh sửa không?", "Xác nhận chỉnh sửa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (txtMaKH.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn khách hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string MaKH = txtMaKH.Text;
                string TenKH = txtTenKH.Text;
                string CCCD = txtCCCD.Text;
                string SDT = txtSDT.Text;
                string GioiTinh = cbbGioiTinh.Text;
                string DiaChi = txtDiaChi.Text;
                customer.Update(MaKH, TenKH, SDT, GioiTinh, CCCD, DiaChi);
                ClearPanel();
                KhachHangForm_Load(sender, e);
            }
        }

        private void dgvKhachHang_Click(object sender, EventArgs e)
        {
            if (dgvKhachHang.CurrentRow != null)
            {
                DataGridViewRow row = dgvKhachHang.CurrentRow;
                if (row.Cells["MaKH"].Value.ToString() != "")
                {
                    txtMaKH.Text = row.Cells["MaKH"].Value.ToString();
                    txtTenKH.Text = row.Cells["TenKH"].Value.ToString();
                    txtDiaChi.Text = row.Cells["DiaChi"].Value.ToString();
                    txtSDT.Text = row.Cells["SDT"].Value.ToString();
                    cbbGioiTinh.Text = row.Cells["GioiTinh"].Value.ToString();
                    txtCCCD.Text = row.Cells["CCCD"].Value.ToString();
                }
                else
                    ClearPanel();
            }
        }

        public void ClearPanel()
        {
            this.txtMaKH.Clear();
            this.txtTenKH.Clear();
            this.txtCCCD.Clear();
            this.cbbGioiTinh.SelectedIndex = -1;
            this.txtSDT.Clear();
            this.txtDiaChi.Clear();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
