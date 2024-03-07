using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MotoStore;

namespace MotoStore
{
    public partial class MenuForm : Form
    {
        MyDB db = new MyDB();
        public MenuForm()
        {
            InitializeComponent();
        }

        public static string chucVu;

        private void MenuForm_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("SELECT ChucVu FROM Nhan_Vien WHERE MaNV = '" + DangNhapForm.user + "'", db.Connection);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                chucVu = reader.GetString(0); 
            }
            else
            {
                chucVu = "Quản trị viên";
            }
            reader.Close();

            this.txtUser.Text = DangNhapForm.user;
            this.txtChucVu.Text = chucVu;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            db.Close();
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (chucVu == "Quản trị viên" || chucVu == "Nhân viên quản lý")
            {
                Form frm = new NhanVienForm();
                this.Hide();
                frm.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("User này không có quyền truy cập Form Nhân Viên", "Thông báo", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (chucVu == "Quản trị viên" || chucVu == "Nhân viên quản lý" || chucVu == "Nhân viên bảo dưỡng")
            {
                Form frm = new BaoDuongForm();
                this.Hide();
                frm.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("User này không có quyền truy cập Form Bảo Dưỡng", "Thông báo",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (chucVu == "Quản trị viên" || chucVu == "Nhân viên quản lý" || chucVu == "Nhân viên thu ngân" 
                || chucVu == "Nhân viên tư vấn")
            {
                Form frm = new KhachHangForm();
                this.Hide();
                frm.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("User này không có quyền truy cập Form Khách Hàng", "Thông báo", 
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (chucVu == "Quản trị viên" || chucVu == "Nhân viên quản lý"
                || chucVu == "Nhân viên kho hàng" || chucVu == "Nhân viên tư vấn")
            {
                Form frm = new XeForm();
                this.Hide();
                frm.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("User này không có quyền truy cập Form Xe", "Thông báo",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (chucVu == "Quản trị viên" || chucVu == "Nhân viên quản lý"
                || chucVu == "Nhân viên kho hàng" || chucVu == "Nhân viên tư vấn")
            {
                Form frm = new PhuTungForm();
                this.Hide();
                frm.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("User này không có quyền truy cập Form Phụ Tùng", "Thông báo",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            if (chucVu == "Quản trị viên" || chucVu == "Nhân viên quản lý" 
                || chucVu == "Nhân viên kho hàng")
            {
                Form frm = new PhieuNhapForm();
                this.Hide();
                frm.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("User này không có quyền truy cập Form Phiếu Nhập", "Thông báo",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if (chucVu == "Quản trị viên" || chucVu == "Nhân viên quản lý" 
                || chucVu == "Nhân viên thu ngân")
            {
                Form frm = new HoaDonForm();
                this.Hide();
                frm.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("User này không có quyền truy cập Form Hoá Đơn", "Thông báo",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            int borderWidth = 3;
            Color borderColor = Color.Black;
            Pen borderPen = new Pen(borderColor, borderWidth);
            e.Graphics.DrawRectangle(borderPen, new Rectangle(0, 0, panel1.ClientSize.Width - 1, panel1.ClientSize.Height - 1));
        }
    }
}
