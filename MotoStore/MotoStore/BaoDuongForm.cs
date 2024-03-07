using DocumentFormat.OpenXml.Spreadsheet;
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
    public partial class BaoDuongForm : Form
    {
        Maintenance maintenance = new Maintenance();
        public BaoDuongForm()
        {
            InitializeComponent();
        }

        private void BaoDuongForm_Load(object sender, EventArgs e)
        {
            dgvBaoDuong.DataSource=maintenance.LayDS();
            dgvBaoDuong.Columns["MaBD"].HeaderText = "Mã bảo dưỡng";
            dgvBaoDuong.Columns["TenBD"].HeaderText = "Tên bảo dưỡng";
            dgvBaoDuong.Columns["PhiBD"].HeaderText = "Phí bảo dưỡng";
            dgvBaoDuong.Columns["ThongTinBaoDuong"].HeaderText = "Thông tin bảo dưỡng";
            dgvBaoDuong.Columns["PhiBD"].DefaultCellStyle.Format = "#,#.##";
        }

        private void btnThemBaoDuong_Click(object sender, EventArgs e)
        {
            this.txtMaBD.Clear();
            if (MessageBox.Show("Bạn có chắc chắn muốn thêm mới không?", "Xác nhận thêm mới", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (!Regex.IsMatch(txtPhiBD.Text, @"^[0-9,]+$"))
            {
                MessageBox.Show("Phí bảo dưỡng phải là 1 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string TenBD = txtTenBD.Text;
                decimal PhiBD = Convert.ToDecimal(txtPhiBD.Text);
                string ThongTinBaoDuong = txtThongTinBaoDuong.Text;
                maintenance.Insert(TenBD, PhiBD, ThongTinBaoDuong);
                dgvBaoDuong.DataSource = maintenance.LayDS();
            }
            ClearPanel();
        }

        private bool checkEmpty()
        {
            if (txtTenBD.Text.Trim() == "" || txtPhiBD.Text.Trim() == "" || txtThongTinBaoDuong.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin bảo dưỡng.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return true;
            }
            else
            {
                return false;
            }
        }

        private void btnSuaBaoDuong_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn chỉnh sửa không?", "Xác nhận chỉnh sửa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (txtMaBD.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn bảo dưỡng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!Regex.IsMatch(txtPhiBD.Text, @"^[0-9,]+$"))
            {
                MessageBox.Show("Phí bảo dưỡng phải là 1 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string MaBD=txtMaBD.Text;
                string TenBD = txtTenBD.Text;
                decimal PhiBD = Convert.ToDecimal(txtPhiBD.Text);
                string ThongTinBaoDuong = txtThongTinBaoDuong.Text;
                maintenance.Update(MaBD,TenBD, PhiBD, ThongTinBaoDuong);
                dgvBaoDuong.DataSource = maintenance.LayDS();
            }
            ClearPanel();
        }

        private void btnXoaBaoDuong_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Xác nhận xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }
            if (txtMaBD.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn bảo dưỡng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            maintenance.Delete(txtMaBD.Text);
            dgvBaoDuong.DataSource = maintenance.LayDS();
            ClearPanel();

        }
        private void dgvBaoDuong_Click(object sender, EventArgs e)
        {
            if (dgvBaoDuong.CurrentRow != null)
            {
                DataGridViewRow row = dgvBaoDuong.CurrentRow;
                if (row.Cells["MaBD"].Value.ToString() != "")
                {
                    txtMaBD.Text = row.Cells["MaBD"].Value.ToString();
                    txtTenBD.Text = row.Cells["TenBD"].Value.ToString();
                    txtPhiBD.Text = Convert.ToDecimal(row.Cells["PhiBD"].Value).ToString("#");
                    txtThongTinBaoDuong.Text = row.Cells["ThongTinBaoDuong"].Value.ToString();
                }
                else
                    ClearPanel();
            }
        }

        public void ClearPanel()
        {
            this.txtMaBD.Clear();
            this.txtTenBD.Clear();
            this.txtPhiBD.Clear();
            this.txtThongTinBaoDuong.Text = null;
        }

        private void txtLocBaoDuong_TextChanged(object sender, EventArgs e)
        {
            dgvBaoDuong.DataSource=maintenance.LayDS(txtLocBaoDuong.Text);
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
