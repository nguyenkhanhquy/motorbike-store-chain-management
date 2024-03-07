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
    public partial class ChiTietPhieuNhapForm : Form
    {
        Receipt receipt = new Receipt();
        DataSet dataSet;
        public ChiTietPhieuNhapForm(DataGridViewCellCollection cells)
        {
            InitializeComponent();
            dataSet = receipt.LayChiTietPhieuNhap(cells["MaPN"].Value.ToString());
            txtMaPN.Text = cells["MaPN"].Value.ToString();
            txtDiaChi.Text = cells["DiaChi"].Value.ToString();
            txtMaNV.Text = cells["MaNV"].Value.ToString();
            txtSDT.Text = cells["SDT"].Value.ToString();
            txtMaNCC.Text = cells["MaNCC"].Value.ToString();
            txtTenNV.Text = cells["TenNV"].Value.ToString();
            txtSDT.Text = cells["SDT"].Value.ToString();
            txtTenNCC.Text = cells["TenNCC"].Value.ToString();
            dtpNgayNhap.Value = Convert.ToDateTime(cells["NgayNhap"].Value);

        }

        private void ChiTietPhieuNhapForm_Load(object sender, EventArgs e)
        {
            int y = 220;
            foreach (DataRow row in dataSet.Tables["Xe"].Rows)
            {
                Panel panel = new Panel
                {
                    BorderStyle = BorderStyle.FixedSingle,
                    Size = new Size(768, 55),
                    Location = new Point(10, y)
                };
                Label[] labels =
                {
                    new Label
                    {
                        Text = "Mã mặt hàng: " + row["MaMH"].ToString(),
                        Location = new Point(10, 5),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Tên mặt hàng: " + row["TenMH"].ToString(),
                        Location = new Point(370, 5),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Màu sắc: " + row["MauSac"].ToString(),
                        Location = new Point(10, 30),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Giá nhập: " + row["GiaNhap"].ToString(),
                        Location = new Point(370, 30),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Số lượng: " + row["SoLuong"].ToString(),
                        Location = new Point(690, 5),
                        AutoSize = true
                    }
                };
                panel.Controls.AddRange(labels);
                this.Controls.Add(panel);
                y += 56;
            }
            foreach (DataRow row in dataSet.Tables["PhuTung"].Rows)
            {
                Panel panel = new Panel
                {
                    BorderStyle = BorderStyle.FixedSingle,
                    Size = new Size(768, 55),
                    Margin = new Padding(10),
                    Location = new Point(10, y)
                };
                Label[] labels =
                {
                    new Label
                    {
                        Text = "Mã mặt hàng: " + row["MaMH"].ToString(),
                        Location = new Point(10, 5),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Tên mặt hàng: " + row["TenMH"].ToString(),
                        Location = new Point(370, 5),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Loại phụ tùng - Chất lượng: " + row["LoaiPT"].ToString() +" - " +row["ChatLuong"].ToString() ,
                        Location = new Point(10, 30),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Giá nhập: " + row["GiaNhap"].ToString(),
                        Location = new Point(370, 30),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Số lượng: " + row["SoLuong"].ToString(),
                        Location = new Point(690, 5),
                        AutoSize = true
                    }
                };
                panel.Controls.AddRange(labels);
                this.Controls.Add(panel);
                y += 56;
            }
        }
    }
}
