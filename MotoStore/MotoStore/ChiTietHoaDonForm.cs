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
        Invoice invoice= new Invoice();
        DataSet dataSet;
        public ChiTietHoaDonForm(DataGridViewCellCollection cells)
        {
            InitializeComponent();
            dataSet = invoice.LayChiTietHoaDon(cells["MaHD"].Value.ToString());
            txtMaHD.Text = cells["MaHD"].Value.ToString();
            txtCCCD.Text = cells["CCCD"].Value.ToString();
            txtDiaChi.Text = cells["DiaChi"].Value.ToString();
            txtMaNV.Text = cells["MaNV"].Value.ToString();
            txtSDT.Text = cells["SDT"].Value.ToString();
            txtMaKH.Text = cells["MaKH"].Value.ToString();
            txtTenNV.Text = cells["TenNV"].Value.ToString();
            txtSDT.Text = cells["SDT"].Value.ToString();
            txtTenKH.Text = cells["TenKH"].Value.ToString();
            dtpNgayLapHD.Value=Convert.ToDateTime( cells["NgayLap"].Value);
        }

        private void ChiTietHoaDon_Load(object sender, EventArgs e)
        {

            int y = 205;
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
                this.Controls.Add(panel);
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
                this.Controls.Add(panel);
                y += 56;
            }
        }

      
    }
    
}
