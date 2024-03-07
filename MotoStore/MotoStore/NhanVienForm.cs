using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    public partial class NhanVienForm : Form
    {
        MyDB db = new MyDB();
        Employee employee = new Employee();
        public NhanVienForm()
        {
            InitializeComponent();
        }

        private void EmployeeForm_Load(object sender, EventArgs e)
        {
            cbbTenCN.DataSource = db.LayDSChiNhanh();
            string[] columnValues = employee.LayDS().AsEnumerable().Select(r => r.Field<string>("TenNV")).Distinct().ToArray();
            AutoCompleteStringCollection autoCompleteCollection = new AutoCompleteStringCollection();
            autoCompleteCollection.AddRange(columnValues);
            txtLocTenNV.AutoCompleteSource = AutoCompleteSource.CustomSource;
            txtLocTenNV.AutoCompleteCustomSource = autoCompleteCollection;
            cbbTenCN.SelectedIndex = -1;
            cbbLocChucVu.SelectedIndex = 5;
            cbbLocTenCN.SelectedIndex = 5;
            dgvNhanVien.DataSource = employee.LayDS();
            dgvNhanVien.Columns["MaNV"].HeaderText = "Mã nhân viên";
            dgvNhanVien.Columns["TenNV"].HeaderText = "Tên nhân viên";
            dgvNhanVien.Columns["NgaySinh"].HeaderText = "Ngày sinh";
            dgvNhanVien.Columns["DiaChi"].HeaderText = "Địa chỉ";
            dgvNhanVien.Columns["SDT"].HeaderText = "Số điện thoại";
            dgvNhanVien.Columns["GioiTinh"].HeaderText = "Giới tính";
            dgvNhanVien.Columns["CCCD"].HeaderText = "CCCD";
            dgvNhanVien.Columns["ChucVu"].HeaderText = "Chức vụ";
            dgvNhanVien.Columns["TenCN"].HeaderText = "Tên chi nhánh";
            dgvNhanVien.Columns["Luong"].HeaderText = "Mức lương";
            dgvNhanVien.Columns["Luong"].DefaultCellStyle.Format = "#,#.##";
        }
        public bool checkEmpty()
        {
            if (txtTenNV.Text.Trim() == "" || dtpNgaySinh.Value == null || txtDiaChi.Text.Trim() == "" || txtSDT.Text.Trim() == "" || cbbGioiTinh.Text.Trim() == "" || txtCCCD.Text.Trim() == "" || cbbChucVu.Text.Trim() == "" || cbbTenCN.SelectedValue == null || txtLuong.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin nhân viên.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return true;
            }
            else
            {
                return false;
            }
        }
        private void btnThemNhanVien_Click(object sender, EventArgs e)
        {
            this.txtMaNV.Clear();
            if (MessageBox.Show("Bạn có chắc chắn muốn thêm mới không?", "Xác nhận thêm mới", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (!Regex.IsMatch(txtLuong.Text, @"^[0-9,]+$"))
            {
                MessageBox.Show("Lương phải là 1 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (this.cbbChucVu.SelectedItem.ToString() == "Nhân viên quản lý" && MenuForm.chucVu != "Quản trị viên")
            {
                MessageBox.Show("Nhân viên quản lý không được thêm nhân viên quản lý khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string TenNV = txtTenNV.Text;
                DateTime NgaySinh = dtpNgaySinh.Value;
                string DiaChi = txtDiaChi.Text;
                string SDT = txtSDT.Text;
                string GioiTinh = cbbGioiTinh.Text;
                string CCCD = txtCCCD.Text;
                string ChucVu = cbbChucVu.Text;
                string TenCN = cbbTenCN.Text;
                decimal Luong = Convert.ToDecimal(txtLuong.Text);
                this.chkLoc.Checked = false;
                employee.Insert(TenNV, NgaySinh, DiaChi, SDT, GioiTinh, CCCD, ChucVu, TenCN, Luong);
                LocNhanVien();
                ClearPanel();
            }     
        }
        private void dgvNhanVien_Click(object sender, EventArgs e)
        {
            if (dgvNhanVien.CurrentRow != null)
            {
                DataGridViewRow row = dgvNhanVien.CurrentRow;
                if (row.Cells["MaNV"].Value.ToString() != "")
                {
                    txtMaNV.Text = row.Cells["MaNV"].Value.ToString();
                    txtTenNV.Text = row.Cells["TenNV"].Value.ToString();
                    dtpNgaySinh.Value = (DateTime)row.Cells["NgaySinh"].Value;
                    txtDiaChi.Text = row.Cells["DiaChi"].Value.ToString();
                    txtSDT.Text = row.Cells["SDT"].Value.ToString();
                    cbbGioiTinh.Text = row.Cells["GioiTinh"].Value.ToString();
                    txtCCCD.Text = row.Cells["CCCD"].Value.ToString();
                    cbbChucVu.Text = row.Cells["ChucVu"].Value.ToString();
                    cbbTenCN.Text = row.Cells["TenCN"].Value.ToString();
                    txtLuong.Text = Convert.ToDecimal(row.Cells["Luong"].Value).ToString("#");
                }
                else
                    ClearPanel();
            }
        }
        public void ClearPanel()
        {
            this.txtMaNV.Clear();
            this.txtTenNV.Clear();
            this.dtpNgaySinh.ResetText();
            this.txtDiaChi.Clear();
            this.txtSDT.Clear();
            this.cbbGioiTinh.SelectedIndex = -1;
            this.txtCCCD.Clear();
            this.cbbChucVu.SelectedIndex = -1;
            this.cbbTenCN.SelectedIndex = -1;
            this.txtLuong.Clear();
        }
        public void LocNhanVien()
        {
            if (chkLoc.Checked)
            {
                string TenCN = cbbLocTenCN.Text == "None"?"" : cbbLocTenCN.Text;
                string ChucVu = cbbLocChucVu.Text == "None" ? "" : cbbLocChucVu.Text;
                string TenNV = txtLocTenNV.Text;
                string MaNV = txtLocMaNV.Text;
                dgvNhanVien.DataSource = employee.LayDS(TenCN, ChucVu, TenNV, MaNV);
            }
            else
                dgvNhanVien.DataSource = employee.LayDS();
        }
        private void btnSuaNhanVien_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn chỉnh sửa không?", "Xác nhận chỉnh sửa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (txtMaNV.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!Regex.IsMatch(txtLuong.Text, @"^[0-9,]+$"))
            {
                MessageBox.Show("Lương phải là 1 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (this.cbbChucVu.SelectedItem.ToString() == "Nhân viên quản lý" && MenuForm.chucVu != "Quản trị viên")
            {
                MessageBox.Show("Nhân viên quản lý không được sửa thông tin của mình hoặc nhân viên quản lý khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string MaNV = txtMaNV.Text;
                string TenNV = txtTenNV.Text;
                DateTime NgaySinh = dtpNgaySinh.Value;
                string DiaChi = txtDiaChi.Text;
                string SDT = txtSDT.Text;
                string GioiTinh = cbbGioiTinh.Text;
                string CCCD = txtCCCD.Text;
                string ChucVu = cbbChucVu.Text;
                string TenCN = cbbTenCN.Text;
                decimal Luong = Convert.ToDecimal(txtLuong.Text);
                this.chkLoc.Checked = false;
                employee.Update(MaNV, TenNV, NgaySinh, DiaChi, SDT, GioiTinh, CCCD, ChucVu, TenCN, Luong);
                ClearPanel();
                LocNhanVien();
            }
        }
        private void cbbLocTenCN_SelectedIndexChanged(object sender, EventArgs e)
        {
            LocNhanVien();
        }
        private void cbbLocChucVu_SelectedIndexChanged(object sender, EventArgs e)
        {
            LocNhanVien();
        }

        private void txtLocTenNV_TextChanged(object sender, EventArgs e)
        {
            LocNhanVien();
        }

        private void txtLocMaNV_TextChanged(object sender, EventArgs e)
        {
            LocNhanVien();
        }

        private void btnXoaNhanVien_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Xác nhận xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }
            if (this.txtMaNV.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (this.cbbChucVu.SelectedItem.ToString() == "Nhân viên quản lý" && MenuForm.chucVu != "Quản trị viên")
            {
                MessageBox.Show("Nhân viên quản lý không được xoá thông tin của mình hoặc nhân viên quản lý khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            this.chkLoc.Checked = false;
            employee.Delete(txtMaNV.Text);
            LocNhanVien();
        }

        private void chkLoc_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkLoc.Checked == true)
            {
                this.cbbLocTenCN.Enabled = true;
                this.cbbLocChucVu.Enabled = true;
                this.txtLocTenNV.Enabled = true;
                this.txtLocMaNV.Enabled = true;
            }
            else
            {
                this.cbbLocTenCN.SelectedIndex = 5;
                this.cbbLocTenCN.Enabled = false;

                this.cbbLocChucVu.SelectedIndex = 5;
                this.cbbLocChucVu.Enabled = false;

                this.txtLocTenNV.Clear();
                this.txtLocTenNV.Enabled = false;

                this.txtLocMaNV.Clear();
                this.txtLocMaNV.Enabled = false;
            }
            LocNhanVien();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }

}
