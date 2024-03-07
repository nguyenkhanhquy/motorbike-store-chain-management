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
    public partial class ChiTietHoaDonForm : Form
    {
        public string MaHD;
        Invoice invoice = new Invoice();
        public ChiTietHoaDonForm()
        {
            InitializeComponent();
        }

        private void ChiTietHoaDon_Load(object sender, EventArgs e)
        {
            DataSet dataSet = invoice.LayChiTietHoaDon(MaHD);
            int y = 0;
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
                        Text = "Đơn giá: " + row["DonGia"].ToString(),
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
                pnCTHD.Controls.Add(panel);
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
                        Text = "Đơn giá: " + row["DonGia"].ToString(),
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
                pnCTHD.Controls.Add(panel);
                y += 56;
            }
            foreach (DataRow row in dataSet.Tables["BaoDuong"].Rows)
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
                        Text = "Mã bảo dưỡng: " + row["MaBD"].ToString(),
                        Location = new Point(10, 5),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Tên dảo dưỡng: " + row["TenBD"].ToString(),
                        Location = new Point(370, 5),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Mã nhân viên bảo dưỡng: " + row["MaNVBaoDuong"].ToString(),
                        Location = new Point(10, 30),
                        AutoSize = true
                    },
                    new Label
                    {
                        Text = "Phí bảo dưỡng: " + row["PhiBD"].ToString(),
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
                pnCTHD.Controls.Add(panel);
                y += 56;
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void txtSDTKH_TextChanged(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }
    }
    
}
