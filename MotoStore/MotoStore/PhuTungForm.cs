using DocumentFormat.OpenXml.Spreadsheet;
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
    public partial class PhuTungForm : Form
    {
        Sparepart sparepart = new Sparepart();
        public PhuTungForm()
        {
            InitializeComponent();
        }

        private void PhuTungForm_Load(object sender, EventArgs e)
        {
            LocPhuTung();
            dgvPhuTung.Columns["MaMH"].HeaderText = "Mã phụ tùng";
            dgvPhuTung.Columns["HSX"].HeaderText = "Hãng sản xuất";
            dgvPhuTung.Columns["TenMH"].HeaderText = "Tên phụ tùng";
            dgvPhuTung.Columns["DonGia"].HeaderText = "Đơn giá";
            dgvPhuTung.Columns["GiaNhap"].HeaderText = "Giá nhập";
            dgvPhuTung.Columns["HinhAnh"].HeaderText = "Hình ảnh";
            dgvPhuTung.Columns["ChatLuong"].HeaderText = "Chất lượng";
            dgvPhuTung.Columns["LoaiPT"].HeaderText = "Loại phụ tùng";
            dgvPhuTung.Columns["DonGia"].DefaultCellStyle.Format = "#,#.##";
            dgvPhuTung.Columns["GiaNhap"].DefaultCellStyle.Format = "#,#.##";
            DataTable dt = sparepart.LayDS();
            SetupAutoComplete(txtLocHSX, "HSX", dt);
            SetupAutoComplete(txtLocTenPT, "TenMH", dt);
            SetupAutoComplete(txtLocLoaiPT, "LoaiPT", dt);
            SetupAutoComplete(txtLocChatLuong, "ChatLuong", dt);
            if (MenuForm.chucVu == "Nhân viên tư vấn")
            {
                this.txtHSX.ReadOnly = true;
                this.txtTenPT.ReadOnly = true;
                this.txtGiaNhap.ReadOnly = true;
                this.txtDonGia.ReadOnly = true;
                this.txtChatLuong.ReadOnly = true;
                this.txtLoaiPT.ReadOnly = true;
                this.txtLinkAnh.Enabled = false;
                this.btnThemAnh.Enabled = false;
                this.btnChonAnh.Enabled = false;
                this.btnXoaAnh.Enabled = false;
                this.btnThemPhuTung.Enabled = false;
                this.btnSuaPhuTung.Enabled = false;
            }
        }
        public void LocPhuTung()
        {
            if (chkLoc.Checked)
            {
                string HSX = txtLocHSX.Text;
                string TenPT = txtLocTenPT.Text;
                string LoaiPT = txtLocLoaiPT.Text;
                string ChatLuong = txtLocChatLuong.Text;
                dgvPhuTung.DataSource = sparepart.LayDS(TenPT, HSX, ChatLuong, LoaiPT);
            }
            else
                dgvPhuTung.DataSource = sparepart.LayDS();
        }

        private void btnChonAnh_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.Filter = "Image files (*.jpg, *.jpeg, *.jpe, *.jfif, *.png, *.bmp) | *.jpg; *.jpeg; *.jpe; *.jfif; *.png; *.bmp";

            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                string imagePath = openFileDialog1.FileName;
                picPhuTung.Image = Image.FromFile(imagePath);
            }
        }

        private void btnXoaAnh_Click(object sender, EventArgs e)
        {
            picPhuTung.Image = null;
        }

        private void SetupAutoComplete(TextBox textBox, string columnName,DataTable dataTable)
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

        private void btnThemPhuTung_Click(object sender, EventArgs e)
        {
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
                string TenPT = txtTenPT.Text;
                decimal GiaNhap = Convert.ToDecimal(txtGiaNhap.Text);
                decimal DonGia = Convert.ToDecimal(txtDonGia.Text);
                string LoaiPT = txtLoaiPT.Text;
                string ChatLuong = txtChatLuong.Text;
                Image image = picPhuTung.Image;
                using (MemoryStream ms = new MemoryStream())
                {
                    image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                    byte[] HinhAnh = ms.ToArray();
                    sparepart.Insert(HSX, TenPT, DonGia, GiaNhap, HinhAnh, ChatLuong, LoaiPT);
                    LocPhuTung();
                }

            }
        }
        private bool checkEmpty()
        {
            if (txtHSX.Text.Trim() == "" || txtTenPT.Text.Trim() == "" || txtGiaNhap.Text.Trim() == "" || txtDonGia.Text.Trim() == "" || txtLoaiPT.Text.Trim() == "" || txtChatLuong.Text.Trim() == "" || picPhuTung.Image==null)
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin Phụ tùng.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return true;
            }
            else
            {
                return false;
            }
        }
        private void chkLoc_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkLoc.Checked == true)
            {
                this.txtLocTenPT.Enabled = true;
                this.txtLocHSX.Enabled = true;
                this.txtLocChatLuong.Enabled = true;
                this.txtLocLoaiPT.Enabled = true;
            }
            else
            {
                this.txtLocTenPT.Clear();
                this.txtLocTenPT.Enabled = false;

                this.txtLocHSX.Clear();
                this.txtLocHSX.Enabled = false;

                this.txtLocChatLuong.Clear();
                this.txtLocChatLuong.Enabled = false;

                this.txtLocLoaiPT.Clear();
                this.txtLocLoaiPT.Enabled = false;
            }
            LocPhuTung();
        }

        private void btnSuaPhuTung_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn chỉnh sửa không?", "Xác nhận chỉnh sửa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;
            if (txtMaPT.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng chọn phụ tùng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!Regex.IsMatch(txtGiaNhap.Text, @"^[0-9,]+$") || !Regex.IsMatch(txtDonGia.Text, @"^[0-9,]+$"))
            {
                MessageBox.Show("Đơn giá và Giá nhập phải là 1 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!checkEmpty())
            {
                string MaPT=txtMaPT.Text;
                string HSX = txtHSX.Text;
                string TenPT = txtTenPT.Text;
                decimal GiaNhap = Convert.ToDecimal(txtGiaNhap.Text);
                decimal DonGia = Convert.ToDecimal(txtDonGia.Text);
                string LoaiPT = txtLoaiPT.Text;
                string ChatLuong = txtChatLuong.Text;
                Image image = picPhuTung.Image;
                using (MemoryStream ms = new MemoryStream())
                {
                    image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                    byte[] HinhAnh = ms.ToArray();
                    sparepart.Update(MaPT,HSX, TenPT, DonGia, GiaNhap, HinhAnh, ChatLuong, LoaiPT);
                    LocPhuTung();
                }

            }
        }

        private void txtLocTenPT_TextChanged(object sender, EventArgs e)
        {
            LocPhuTung();
        }

        private void txtLocHSX_TextChanged(object sender, EventArgs e)
        {
            LocPhuTung();
        }

        private void txtLocChatLuong_TextChanged(object sender, EventArgs e)
        {
            LocPhuTung();

        }

        private void txtLocLoaiPT_TextChanged(object sender, EventArgs e)
        {
            LocPhuTung();
        }

        private void btnThemAnh_Click(object sender, EventArgs e)
        {
            try
            {
                byte[] HinhAnh = new WebClient().DownloadData(txtLinkAnh.Text);
                MemoryStream stream = new MemoryStream(HinhAnh);
                picPhuTung.Image = Image.FromStream(stream);
            }
            catch
            {
                MessageBox.Show("Link ảnh không đúng", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dgvPhuTung_Click(object sender, EventArgs e)
        {
            Image image = picPhuTung.Image;
            if (dgvPhuTung.CurrentRow != null)
            {
                DataGridViewRow row = dgvPhuTung.CurrentRow;
                if (row.Cells["MaMH"].Value.ToString() != "")
                {
                    byte[] data = (byte[])dgvPhuTung.CurrentRow.Cells["HinhAnh"].Value;
                    picPhuTung.Image = Image.FromStream(new MemoryStream(data));
                    txtMaPT.Text = row.Cells["MaMH"].Value.ToString();
                    txtHSX.Text = row.Cells["HSX"].Value.ToString();
                    txtTenPT.Text = row.Cells["TenMH"].Value.ToString();
                    txtLoaiPT.Text = row.Cells["LoaiPT"].Value.ToString();
                    txtChatLuong.Text = row.Cells["ChatLuong"].Value.ToString();
                    txtDonGia.Text = Convert.ToDecimal(row.Cells["DonGia"].Value).ToString("#");
                    txtGiaNhap.Text = Convert.ToDecimal(row.Cells["GiaNhap"].Value).ToString("#");
                }
                else
                    ClearPanel();
            }
        }

        public void ClearPanel()
        {
            this.txtMaPT.Clear();
            this.txtHSX.Clear();
            this.txtTenPT.Clear();
            this.txtGiaNhap.Clear();
            this.txtDonGia.Clear();
            this.txtChatLuong.Clear();
            this.txtLoaiPT.Clear();
            this.txtLinkAnh.Clear();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
