using System.Drawing;
using System.Reflection.Emit;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace MotoStore
{
    partial class HoaDonForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
        private TextBox txtSDTKH;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private DataGridView dgvHoaDon;
        private Panel pnNgayThang;
        private DateTimePicker dtpBatDau;
        private DateTimePicker dtpKetThuc;
        private TextBox txtMaNV;
        private System.Windows.Forms.Label label2;
        private Button btnTimKiem;
        private System.Windows.Forms.Label label3;
        private TextBox txtTenKH;
        private System.Windows.Forms.Label label4;
        private TextBox txtTenNV;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(HoaDonForm));
            this.dgvHoaDon = new System.Windows.Forms.DataGridView();
            this.cmsHoaDon = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.xemChiTiếtHóaĐơnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sửaHóaĐơnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnNgayThang = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.chkTimKiemTheoNgay = new System.Windows.Forms.CheckBox();
            this.dtpKetThuc = new System.Windows.Forms.DateTimePicker();
            this.dtpBatDau = new System.Windows.Forms.DateTimePicker();
            this.txtMaNV = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.txtTenKH = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTenNV = new System.Windows.Forms.TextBox();
            this.txtSDTKH = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.btnThemHoaDon = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHoaDon)).BeginInit();
            this.cmsHoaDon.SuspendLayout();
            this.pnNgayThang.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvHoaDon
            // 
            this.dgvHoaDon.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvHoaDon.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvHoaDon.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dgvHoaDon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvHoaDon.ContextMenuStrip = this.cmsHoaDon;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvHoaDon.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgvHoaDon.Location = new System.Drawing.Point(12, 185);
            this.dgvHoaDon.Name = "dgvHoaDon";
            this.dgvHoaDon.ReadOnly = true;
            this.dgvHoaDon.RowHeadersWidth = 51;
            this.dgvHoaDon.RowTemplate.Height = 25;
            this.dgvHoaDon.Size = new System.Drawing.Size(1358, 320);
            this.dgvHoaDon.TabIndex = 0;
            // 
            // cmsHoaDon
            // 
            this.cmsHoaDon.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.cmsHoaDon.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.xemChiTiếtHóaĐơnToolStripMenuItem,
            this.sửaHóaĐơnToolStripMenuItem});
            this.cmsHoaDon.Name = "cmsHoaDon";
            this.cmsHoaDon.Size = new System.Drawing.Size(227, 52);
            // 
            // xemChiTiếtHóaĐơnToolStripMenuItem
            // 
            this.xemChiTiếtHóaĐơnToolStripMenuItem.Name = "xemChiTiếtHóaĐơnToolStripMenuItem";
            this.xemChiTiếtHóaĐơnToolStripMenuItem.Size = new System.Drawing.Size(226, 24);
            this.xemChiTiếtHóaĐơnToolStripMenuItem.Text = "Xem Chi Tiết Hóa Đơn";
            this.xemChiTiếtHóaĐơnToolStripMenuItem.Click += new System.EventHandler(this.xemChiTiếtHóaĐơnToolStripMenuItem_Click);
            // 
            // sửaHóaĐơnToolStripMenuItem
            // 
            this.sửaHóaĐơnToolStripMenuItem.Name = "sửaHóaĐơnToolStripMenuItem";
            this.sửaHóaĐơnToolStripMenuItem.Size = new System.Drawing.Size(226, 24);
            this.sửaHóaĐơnToolStripMenuItem.Text = "Sửa Chi Tiết Hóa Đơn";
            this.sửaHóaĐơnToolStripMenuItem.Click += new System.EventHandler(this.sửaHóaĐơnToolStripMenuItem_Click);
            // 
            // pnNgayThang
            // 
            this.pnNgayThang.Controls.Add(this.label1);
            this.pnNgayThang.Controls.Add(this.chkTimKiemTheoNgay);
            this.pnNgayThang.Controls.Add(this.dtpKetThuc);
            this.pnNgayThang.Controls.Add(this.dtpBatDau);
            this.pnNgayThang.Location = new System.Drawing.Point(217, 134);
            this.pnNgayThang.Name = "pnNgayThang";
            this.pnNgayThang.Size = new System.Drawing.Size(804, 45);
            this.pnNgayThang.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(471, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(31, 16);
            this.label1.TabIndex = 9;
            this.label1.Text = "Đến";
            // 
            // chkTimKiemTheoNgay
            // 
            this.chkTimKiemTheoNgay.AutoSize = true;
            this.chkTimKiemTheoNgay.Location = new System.Drawing.Point(3, 12);
            this.chkTimKiemTheoNgay.Name = "chkTimKiemTheoNgay";
            this.chkTimKiemTheoNgay.Size = new System.Drawing.Size(156, 20);
            this.chkTimKiemTheoNgay.TabIndex = 8;
            this.chkTimKiemTheoNgay.Text = "Tìm Kiếm Theo Ngày";
            this.chkTimKiemTheoNgay.UseVisualStyleBackColor = true;
            this.chkTimKiemTheoNgay.CheckedChanged += new System.EventHandler(this.chkTimKiemTheoNgay_CheckedChanged);
            // 
            // dtpKetThuc
            // 
            this.dtpKetThuc.Enabled = false;
            this.dtpKetThuc.Location = new System.Drawing.Point(527, 10);
            this.dtpKetThuc.Name = "dtpKetThuc";
            this.dtpKetThuc.Size = new System.Drawing.Size(260, 22);
            this.dtpKetThuc.TabIndex = 7;
            // 
            // dtpBatDau
            // 
            this.dtpBatDau.Enabled = false;
            this.dtpBatDau.Location = new System.Drawing.Point(182, 10);
            this.dtpBatDau.Name = "dtpBatDau";
            this.dtpBatDau.Size = new System.Drawing.Size(260, 22);
            this.dtpBatDau.TabIndex = 6;
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(462, 53);
            this.txtMaNV.MaxLength = 7;
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.Size = new System.Drawing.Size(180, 22);
            this.txtMaNV.TabIndex = 6;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(356, 56);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(91, 16);
            this.label2.TabIndex = 5;
            this.label2.Text = "Mã Nhân Viên";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.BackColor = System.Drawing.SystemColors.Info;
            this.btnTimKiem.Location = new System.Drawing.Point(1042, 131);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(140, 45);
            this.btnTimKiem.TabIndex = 7;
            this.btnTimKiem.Text = "Tìm Kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = false;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(692, 95);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 16);
            this.label3.TabIndex = 8;
            this.label3.Text = "SĐT Khách hàng";
            // 
            // txtTenKH
            // 
            this.txtTenKH.Location = new System.Drawing.Point(826, 53);
            this.txtTenKH.MaxLength = 40;
            this.txtTenKH.Name = "txtTenKH";
            this.txtTenKH.Size = new System.Drawing.Size(180, 22);
            this.txtTenKH.TabIndex = 9;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(356, 95);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 16);
            this.label4.TabIndex = 10;
            this.label4.Text = "Tên Nhân Viên";
            // 
            // txtTenNV
            // 
            this.txtTenNV.Location = new System.Drawing.Point(462, 92);
            this.txtTenNV.MaxLength = 40;
            this.txtTenNV.Name = "txtTenNV";
            this.txtTenNV.Size = new System.Drawing.Size(180, 22);
            this.txtTenNV.TabIndex = 11;
            // 
            // txtSDTKH
            // 
            this.txtSDTKH.Location = new System.Drawing.Point(826, 92);
            this.txtSDTKH.MaxLength = 10;
            this.txtSDTKH.Name = "txtSDTKH";
            this.txtSDTKH.Size = new System.Drawing.Size(180, 22);
            this.txtSDTKH.TabIndex = 12;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(692, 56);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(104, 16);
            this.label5.TabIndex = 13;
            this.label5.Text = "Tên Khách hàng";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 18F, System.Drawing.FontStyle.Bold);
            this.label6.Location = new System.Drawing.Point(553, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(335, 35);
            this.label6.TabIndex = 19;
            this.label6.Text = "THÔNG TIN HÓA ĐƠN";
            // 
            // btnThemHoaDon
            // 
            this.btnThemHoaDon.Location = new System.Drawing.Point(1042, 63);
            this.btnThemHoaDon.Name = "btnThemHoaDon";
            this.btnThemHoaDon.Size = new System.Drawing.Size(140, 45);
            this.btnThemHoaDon.TabIndex = 20;
            this.btnThemHoaDon.Text = "Thêm Hóa Đơn";
            this.btnThemHoaDon.UseVisualStyleBackColor = true;
            this.btnThemHoaDon.Click += new System.EventHandler(this.btnThemHoaDon_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.BackColor = System.Drawing.SystemColors.Control;
            this.btnThoat.Location = new System.Drawing.Point(1188, 131);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(182, 45);
            this.btnThoat.TabIndex = 21;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = false;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Tan;
            this.pictureBox1.Cursor = System.Windows.Forms.Cursors.AppStarting;
            this.pictureBox1.ErrorImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.ErrorImage")));
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.InitialImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.InitialImage")));
            this.pictureBox1.Location = new System.Drawing.Point(0, 0);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(275, 64);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.pictureBox1.TabIndex = 32;
            this.pictureBox1.TabStop = false;
            // 
            // HoaDonForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(1382, 509);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnThemHoaDon);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtSDTKH);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtTenNV);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtTenKH);
            this.Controls.Add(this.btnTimKiem);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtMaNV);
            this.Controls.Add(this.pnNgayThang);
            this.Controls.Add(this.dgvHoaDon);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.KeyPreview = true;
            this.Name = "HoaDonForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Thông Tin Hoá Đơn";
            this.Load += new System.EventHandler(this.HoaDonForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvHoaDon)).EndInit();
            this.cmsHoaDon.ResumeLayout(false);
            this.pnNgayThang.ResumeLayout(false);
            this.pnNgayThang.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox chkTimKiemTheoNgay;
        private ContextMenuStrip cmsHoaDon;
        private ToolStripMenuItem xemChiTiếtHóaĐơnToolStripMenuItem;
        private ToolStripMenuItem sửaHóaĐơnToolStripMenuItem;
        private Button btnThemHoaDon;
        private Button btnThoat;
        private System.Windows.Forms.Label label1;
        private PictureBox pictureBox1;
    }
}