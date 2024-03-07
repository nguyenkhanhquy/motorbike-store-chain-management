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
    public partial class ThemChiTietHoaDonForm : Form
    {
        private Moto moto = new Moto();
        private Sparepart sparepart = new Sparepart();
        Invoice invoice = new Invoice();
        Maintenance maintenance = new Maintenance();
        string MaHD;
        private Employee employee= new Employee();

        public ThemChiTietHoaDonForm(string v)
        {
            InitializeComponent();
            this.MaHD = v;
        }
        
        private void ThemCTHD(string maMH, string tenMH, int soluong, string DonGia, string text)
        {
            CTHDPanel cthd;
            if (maMH.Substring(0, 2) == "XE")
            {
                cthd = new CTHDPanel("Mã Mặt Hàng: " + maMH, "Tên Mặt Hàng: " + tenMH, soluong.ToString(), "Đơn Giá: " + DonGia, "Màu Sắc: " + text);
                cthd.pnMaMH.Name = maMH;
            }
            else if (maMH.Substring(0, 2) == "PT")
            {
                cthd = new CTHDPanel("Mã Mặt Hàng: " + maMH, "Tên Mặt Hàng: " + tenMH, soluong.ToString(), "Đơn Giá: " + DonGia, "Loại Phụ Tùng - Chất lượng: " + text);
                cthd.pnMaMH.Name = maMH;
            }
            else
            {
                cthd = new CTHDPanel("Mã Bảo Dưỡng: " + maMH, "Tên Bảo Dưỡng: " + tenMH, soluong.ToString(), "Phí Bảo Dưỡng: " + DonGia, "Mã Nhân Viên Bảo Dưỡng: " + text);
                cthd.pnMaMH.Name = maMH;
            }
            cthd.Name = MaHD;
            cthd.btnTang.Click += Cthd_Click;
            cthd.btnGiam.Click += Cthd_Click;
            cthd.btnXoa.Click += Cthd_Click;
            if (Ktrcthd(cthd))
            {
                bool a;
                
                if(maMH.Substring(0, 2) == "BD")
                    a= invoice.ThemCTHDBaoDuong(MaHD, maMH,text);
                else
                    a= invoice.ThemCTHDMatHang(MaHD, maMH);
                if(a)
                    pnCTHD.Controls.Add(cthd);
                dgvHoaDon.DataSource = invoice.LayThongTinHoaDon(MaHD);
            }
        }
        private bool Ktrcthd(CTHDPanel cthd)
        {
            foreach (CTHDPanel control in pnCTHD.Controls)
            {
                if (control == cthd)
                {
                    bool a;
                    if(control.pnMaMH.Name.Substring(0,2)=="BD")
                       a= invoice.SuaCTHDBaoDuong(MaHD, control.pnMaMH.Name, control.lbl.Text.Substring(control.lbl.Text.LastIndexOf(' ') + 1), int.Parse(control.lblSoLuong.Text)+1);
                    else
                        a=invoice.SuaCTHDMatHang(MaHD, control.pnMaMH.Name, int.Parse(control.lblSoLuong.Text)+1);
                   if(a)
                        control.lblSoLuong.Text = (int.Parse(control.lblSoLuong.Text) + 1).ToString();

                    dgvHoaDon.DataSource = invoice.LayThongTinHoaDon(MaHD);
                    return false;
                }
            }
            return true;
        }

        private void SuaChiTietHoaDonForm_Load(object sender, EventArgs e)
        {
            dgvHoaDon.DataSource = invoice.LayThongTinHoaDon(MaHD);
            DataSet dataSet = invoice.LayChiTietHoaDon(MaHD);
            foreach (DataRow row in dataSet.Tables["Xe"].Rows)
            {
                CTHDPanel cthd = new CTHDPanel("Mã Mặt Hàng: " + row["MaMH"].ToString(), "Tên Mặt Hàng: " + row["TenMH"].ToString(), row["SoLuong"].ToString(), "Đơn Giá: " + row["DonGia"].ToString(), "Màu Sắc: " + row["MauSac"].ToString());
                cthd.pnMaMH.Name = row["MaMH"].ToString();
                cthd.Name = MaHD;
                cthd.btnTang.Click += Cthd_Click;
                cthd.btnGiam.Click += Cthd_Click;
                cthd.btnXoa.Click += Cthd_Click;
                pnCTHD.Controls.Add(cthd);

            }
            foreach (DataRow row in dataSet.Tables["PhuTung"].Rows)
            {
                CTHDPanel cthd = new CTHDPanel("Mã Mặt Hàng: " + row["MaMH"].ToString(), "Tên Mặt Hàng: " + row["TenMH"].ToString(), row["SoLuong"].ToString(), "Đơn Giá: " + row["DonGia"].ToString(), "Loại Phụ Tùng: " + row["LoaiPT"].ToString() + " - Chất lượng: " + row["ChatLuong"].ToString());
                cthd.Name = MaHD;
                cthd.pnMaMH.Name = row["MaMH"].ToString();
                pnCTHD.Controls.Add(cthd);
                cthd.btnTang.Click += Cthd_Click;
                cthd.btnGiam.Click += Cthd_Click;
                cthd.btnXoa.Click += Cthd_Click;
            }
            foreach (DataRow row in dataSet.Tables["BaoDuong"].Rows)
            {
                CTHDPanel cthd = new CTHDPanel("Mã Bảo Dưỡng: " + row["MaBD"].ToString(), "Tên Bảo Dưỡng: " + row["TenBD"].ToString(), row["SoLuong"].ToString(), "Phí Bảo Dưỡng: " + row["PhiBD"].ToString(), "Mã Nhân Viên Bảo Dưỡng: " + row["MaNVBaoDuong"].ToString());
                cthd.Name = MaHD;
                cthd.pnMaMH.Name = row["MaBD"].ToString();
                pnCTHD.Controls.Add(cthd);
                cthd.btnTang.Click += Cthd_Click;
                cthd.btnGiam.Click += Cthd_Click;
                cthd.btnXoa.Click += Cthd_Click;
            }
        }

        private void Cthd_Click(object sender, EventArgs e)
        {
            dgvHoaDon.DataSource = invoice.LayThongTinHoaDon(MaHD);
        }

        private void dgvMH_Click(object sender, EventArgs e)
        {
            try
            {
                DataGridViewRow selectedRow = dgvMH.CurrentRow;
                string MaMH = selectedRow.Cells[0].Value.ToString();
                string TenMH = selectedRow.Cells[1].Value.ToString();
                string text = "";
                string DonGia = selectedRow.Cells[2].Value.ToString();
                if (MaMH.Substring(0, 2) == "XE")
                    text = selectedRow.Cells["MauSac"].Value.ToString();
                else
                    if (MaMH.Substring(0, 2) == "PT")
                    text = selectedRow.Cells["LoaiPT"].Value.ToString() + " - " + selectedRow.Cells["ChatLuong"].Value.ToString();
                else
                {
                    Form form = new Form();
                    DataGridView dataGridView = new DataGridView();
                    dataGridView.DataSource = employee.LayDS("","Nhân viên bảo dưỡng","","");
                    dataGridView.Dock = DockStyle.Fill; 
                    form.Controls.Add(dataGridView);
                    dataGridView.Click += (sender1, e1) =>
                    {
                        text = dataGridView.CurrentRow.Cells["MaNV"].Value.ToString();
                        form.Close();
                    };
                    form.ShowDialog();
                }   
                if(text.Trim()!="")
                ThemCTHD(MaMH, TenMH, 1, DonGia, text);
            }
            catch
            {
                MessageBox.Show("Không có dữ liệu", "Thông báo");
            }
        }

        private void xeSốToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenHoaDon("Xe Số");
        }

        private void xeTayGaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenHoaDon("Xe Tay Ga");
        }

        private void xeCônTayToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenHoaDon("Xe Côn Tay");
        }

        private void tấtCảXeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = moto.LayDSTrenHoaDon();
        }

        private void tấtCảPhụTùngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = sparepart.LayDSTrenHoaDon();
        }

        private void tấtCảBảoDưỡngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            dgvMH.DataSource = maintenance.LayDS();
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
