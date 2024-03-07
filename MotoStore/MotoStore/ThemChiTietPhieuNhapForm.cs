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
    public partial class ThemChiTietPhieuNhapForm : Form
    {
        Moto moto = new Moto();
        Sparepart sparepart = new Sparepart();
        Receipt receipt = new Receipt();
        int y = 0;
        string MaPN;
        public ThemChiTietPhieuNhapForm(string MaPN)
        {
            InitializeComponent();
            this.MaPN = MaPN;
        }

        private void ThemChiTietPhieuNhapForm_Load(object sender, EventArgs e)
        {
            dgvPhieuNhap.DataSource = receipt.LayThongTinPhieuNhap(MaPN);
        }

        private void xeSốToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenPhieuNhap("Xe Số");
        }

        private void xeTayGaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenPhieuNhap("Xe Tay Ga");
        }

        private void xeCônTayToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenPhieuNhap("Xe Côn Tay");
        }

        private void tấtCảXeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenPhieuNhap();
        }

        private void tấtCảPhụTùngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = sparepart.LayDSTrenPhieuNhap();
        }
        private void ThemCTPN(string maMH, string tenMH, int soluong, string giaNhap, string text)
        {
            CTPNPanel ctpn;
            if(maMH.Substring(0,2)=="XE")
                ctpn = new CTPNPanel("Mã Mặt Hàng: " + maMH, "Tên Mặt Hàng: " + tenMH, "Số Lượng: "+soluong , "Giá Nhập: " + giaNhap, "Màu Sắc: " + text);
            else
                ctpn = new CTPNPanel("Mã Mặt Hàng: " + maMH, "Tên Mặt Hàng: " + tenMH, "Số Lượng: " + soluong, "Giá Nhập: " + giaNhap, "Loại Phụ Tùng - Chất lượng: " + text);

            ctpn.Location = new Point(0, y);
            if (Ktrctpn(ctpn))
            {
                pnCTPN.Controls.Add(ctpn);
                receipt.ThemChiTietPhieuNhap(MaPN, maMH, soluong);
                dgvPhieuNhap.DataSource = receipt.LayThongTinPhieuNhap(MaPN);
                y += ctpn.Height;
            }
        }
        private bool Ktrctpn(CTPNPanel ctpn)
        {
            foreach (CTPNPanel control in pnCTPN.Controls)
            {
                if (control == ctpn)
                {
                    return false;
                }
            }
            return true;
        }

        private void dgvMH_Click(object sender, EventArgs e)
        {
            try
            {
                int soluong = 0;
                Form form = new Form();
                form.Size = new Size(210, 110);
                Label label = new Label();
                label.Text = "Số lượng:";
                label.Location = new Point(10, 10);
                label.AutoSize = true;
                TextBox textBox = new TextBox();
                textBox.Location = new Point(80, 10);
                Button okButton = new Button();
                okButton.Text = "OK";
                okButton.Location = new Point(80, 40);
                okButton.Click += (sender1, e1) =>
                {
                    if (textBox.Text.All(c => char.IsDigit(c)))
                    {
                        soluong = Convert.ToInt32(textBox.Text);
                        if (soluong <= 0)
                        {
                            MessageBox.Show("Số lượng phải hơn 0");
                            return;
                        }
                        form.Close();
                        form.DialogResult = DialogResult.OK;
                    }
                    else
                    {
                        MessageBox.Show("Số lượng phải là số");
                    }
                };
                form.Controls.Add(label);
                form.Controls.Add(textBox);
                form.Controls.Add(okButton);
                form.ShowDialog();
                DataGridViewRow selectedRow = dgvMH.CurrentRow;
                string MaMH = selectedRow.Cells["MaMH"].Value.ToString();
                string TenMH = selectedRow.Cells["TenMH"].Value.ToString();
                string text = "";
                string GiaNhap = selectedRow.Cells["GiaNhap"].Value.ToString();
                if (MaMH.Substring(0, 2) == "XE")
                    text = selectedRow.Cells["MauSac"].Value.ToString();
                else
                    text = selectedRow.Cells["LoaiPT"].Value.ToString() + " - " + selectedRow.Cells["ChatLuong"].Value.ToString();
                ThemCTPN(MaMH, TenMH, soluong, GiaNhap, text);
            }
            catch
            {
                MessageBox.Show("Không có dữ liệu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error); 
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
