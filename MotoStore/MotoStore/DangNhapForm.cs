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

namespace MotoStore
{
    public partial class DangNhapForm : Form
    {
        public DangNhapForm()
        {
            InitializeComponent();
        }

        private void DangNhapForm_Load(object sender, EventArgs e)
        {
            this.txtPass.PasswordChar = '*';
        }

        public static SqlConnection conn = null;
        public static string user;
        string pass;

        private void btnDangnhap_Click(object sender, EventArgs e)
        {
            user = this.txtUser.Text.ToUpper();
            pass = this.txtPass.Text;
            try
            {
                string strConnectionString = @"Data Source=LEGION-5\SQLEXPRESS;Initial Catalog=QLMoToStore;
                                               User ID=" + user + "; Password=" + pass;
                conn = new SqlConnection(strConnectionString);
                if (conn.State == ConnectionState.Open) conn.Close();
                conn.Open();

                Form frm = new MenuForm();
                this.Hide();
                frm.ShowDialog();
                this.chkHienMatKhau.Checked = false;
                this.Show();
            }
            catch
            {
                MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng", "Lỗi đăng nhập", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                conn.Close();
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            this.txtUser.Clear();
            this.txtPass.Clear();
            this.txtUser.Focus();
            this.chkHienMatKhau.Checked = false;
        }

        private void chkHienMatKhau_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkHienMatKhau.Checked)
            {
                this.txtPass.PasswordChar = '\0';
            }
            else
            {
                this.txtPass.PasswordChar = '*';
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult traloi;
            traloi = MessageBox.Show("Chắc chắn muốn thoát không?", "Trả lời",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (traloi == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}
