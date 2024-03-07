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
        private System.Windows.Forms.RadioButton rbtnTatca;
        private System.Windows.Forms.RadioButton rbtnCo;
        private System.Windows.Forms.RadioButton rbtnKhong;
        private Panel pnTraGop;
        private System.Windows.Forms.Label label1;
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
            this.dgvHoaDon = new System.Windows.Forms.DataGridView();
            this.cmsHoaDon = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.xemChiTiếtHóaĐơnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sửaHóaĐơnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.xóaHóaĐơnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rbtnTatca = new System.Windows.Forms.RadioButton();
            this.rbtnCo = new System.Windows.Forms.RadioButton();
            this.rbtnKhong = new System.Windows.Forms.RadioButton();
            this.pnTraGop = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.pnNgayThang = new System.Windows.Forms.Panel();
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
            ((System.ComponentModel.ISupportInitialize)(this.dgvHoaDon)).BeginInit();
            this.cmsHoaDon.SuspendLayout();
            this.pnTraGop.SuspendLayout();
            this.pnNgayThang.SuspendLayout();
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
            this.dgvHoaDon.Size = new System.Drawing.Size(1036, 386);
            this.dgvHoaDon.TabIndex = 0;
            // 
            // cmsHoaDon
            // 
            this.cmsHoaDon.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.cmsHoaDon.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.xemChiTiếtHóaĐơnToolStripMenuItem,
            this.sửaHóaĐơnToolStripMenuItem,
            this.xóaHóaĐơnToolStripMenuItem});
            this.cmsHoaDon.Name = "cmsHoaDon";
            this.cmsHoaDon.Size = new System.Drawing.Size(227, 76);
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
            this.sửaHóaĐơnToolStripMenuItem.Text = "Sửa Hóa Đơn";
            // 
            // xóaHóaĐơnToolStripMenuItem
            // 
            this.xóaHóaĐơnToolStripMenuItem.Name = "xóaHóaĐơnToolStripMenuItem";
            this.xóaHóaĐơnToolStripMenuItem.Size = new System.Drawing.Size(226, 24);
            this.xóaHóaĐơnToolStripMenuItem.Text = "Xóa Hóa đơn";
            // 
            // rbtnTatca
            // 
            this.rbtnTatca.AutoSize = true;
            this.rbtnTatca.Checked = true;
            this.rbtnTatca.Location = new System.Drawing.Point(3, 29);
            this.rbtnTatca.Name = "rbtnTatca";
            this.rbtnTatca.Size = new System.Drawing.Size(68, 20);
            this.rbtnTatca.TabIndex = 1;
            this.rbtnTatca.TabStop = true;
            this.rbtnTatca.Text = "Tất Cả";
            this.rbtnTatca.UseVisualStyleBackColor = true;
            // 
            // rbtnCo
            // 
            this.rbtnCo.AutoSize = true;
            this.rbtnCo.Location = new System.Drawing.Point(84, 29);
            this.rbtnCo.Name = "rbtnCo";
            this.rbtnCo.Size = new System.Drawing.Size(45, 20);
            this.rbtnCo.TabIndex = 2;
            this.rbtnCo.Text = "Có";
            this.rbtnCo.UseVisualStyleBackColor = true;
            // 
            // rbtnKhong
            // 
            this.rbtnKhong.AutoSize = true;
            this.rbtnKhong.Location = new System.Drawing.Point(135, 29);
            this.rbtnKhong.Name = "rbtnKhong";
            this.rbtnKhong.Size = new System.Drawing.Size(66, 20);
            this.rbtnKhong.TabIndex = 3;
            this.rbtnKhong.Text = "Không";
            // 
            // pnTraGop
            // 
            this.pnTraGop.Controls.Add(this.label1);
            this.pnTraGop.Controls.Add(this.rbtnTatca);
            this.pnTraGop.Controls.Add(this.rbtnKhong);
            this.pnTraGop.Controls.Add(this.rbtnCo);
            this.pnTraGop.Location = new System.Drawing.Point(30, 57);
            this.pnTraGop.Name = "pnTraGop";
            this.pnTraGop.Size = new System.Drawing.Size(220, 67);
            this.pnTraGop.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(74, 5);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 16);
            this.label1.TabIndex = 4;
            this.label1.Text = "Trả góp";
            // 
            // pnNgayThang
            // 
            this.pnNgayThang.Controls.Add(this.chkTimKiemTheoNgay);
            this.pnNgayThang.Controls.Add(this.dtpKetThuc);
            this.pnNgayThang.Controls.Add(this.dtpBatDau);
            this.pnNgayThang.Location = new System.Drawing.Point(40, 133);
            this.pnNgayThang.Name = "pnNgayThang";
            this.pnNgayThang.Size = new System.Drawing.Size(753, 45);
            this.pnNgayThang.TabIndex = 5;
            // 
            // chkTimKiemTheoNgay
            // 
            this.chkTimKiemTheoNgay.AutoSize = true;
            this.chkTimKiemTheoNgay.Location = new System.Drawing.Point(22, 10);
            this.chkTimKiemTheoNgay.Name = "chkTimKiemTheoNgay";
            this.chkTimKiemTheoNgay.Size = new System.Drawing.Size(156, 20);
            this.chkTimKiemTheoNgay.TabIndex = 8;
            this.chkTimKiemTheoNgay.Text = "Tìm Kiếm Theo Ngày";
            this.chkTimKiemTheoNgay.UseVisualStyleBackColor = true;
            // 
            // dtpKetThuc
            // 
            this.dtpKetThuc.Location = new System.Drawing.Point(507, 9);
            this.dtpKetThuc.Name = "dtpKetThuc";
            this.dtpKetThuc.Size = new System.Drawing.Size(228, 22);
            this.dtpKetThuc.TabIndex = 7;
            // 
            // dtpBatDau
            // 
            this.dtpBatDau.Location = new System.Drawing.Point(200, 9);
            this.dtpBatDau.Name = "dtpBatDau";
            this.dtpBatDau.Size = new System.Drawing.Size(228, 22);
            this.dtpBatDau.TabIndex = 6;
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(429, 60);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.Size = new System.Drawing.Size(180, 22);
            this.txtMaNV.TabIndex = 6;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(328, 65);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(91, 16);
            this.label2.TabIndex = 5;
            this.label2.Text = "Mã Nhân Viên";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.BackColor = System.Drawing.SystemColors.Info;
            this.btnTimKiem.Location = new System.Drawing.Point(853, 133);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(117, 45);
            this.btnTimKiem.TabIndex = 7;
            this.btnTimKiem.Text = "Tìm Kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = false;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(686, 95);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 16);
            this.label3.TabIndex = 8;
            this.label3.Text = "SĐT Khách hàng";
            // 
            // txtTenKH
            // 
            this.txtTenKH.Location = new System.Drawing.Point(808, 57);
            this.txtTenKH.Name = "txtTenKH";
            this.txtTenKH.Size = new System.Drawing.Size(180, 22);
            this.txtTenKH.TabIndex = 9;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(323, 96);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 16);
            this.label4.TabIndex = 10;
            this.label4.Text = "Tên Nhân Viên";
            // 
            // txtTenNV
            // 
            this.txtTenNV.Location = new System.Drawing.Point(429, 92);
            this.txtTenNV.Name = "txtTenNV";
            this.txtTenNV.Size = new System.Drawing.Size(180, 22);
            this.txtTenNV.TabIndex = 11;
            // 
            // txtSDTKH
            // 
            this.txtSDTKH.Location = new System.Drawing.Point(808, 93);
            this.txtSDTKH.Name = "txtSDTKH";
            this.txtSDTKH.Size = new System.Drawing.Size(180, 22);
            this.txtSDTKH.TabIndex = 12;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(689, 60);
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
            this.label6.Location = new System.Drawing.Point(382, 10);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(335, 35);
            this.label6.TabIndex = 19;
            this.label6.Text = "THÔNG TIN HÓA ĐƠN";
            // 
            // HoaDonForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(1060, 583);
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
            this.Controls.Add(this.pnTraGop);
            this.Controls.Add(this.dgvHoaDon);
            this.KeyPreview = true;
            this.Name = "HoaDonForm";
            this.Text = "HoaDonForm";
            this.Load += new System.EventHandler(this.HoaDonForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvHoaDon)).EndInit();
            this.cmsHoaDon.ResumeLayout(false);
            this.pnTraGop.ResumeLayout(false);
            this.pnTraGop.PerformLayout();
            this.pnNgayThang.ResumeLayout(false);
            this.pnNgayThang.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox chkTimKiemTheoNgay;
        private ContextMenuStrip cmsHoaDon;
        private ToolStripMenuItem xemChiTiếtHóaĐơnToolStripMenuItem;
        private ToolStripMenuItem sửaHóaĐơnToolStripMenuItem;
        private ToolStripMenuItem xóaHóaĐơnToolStripMenuItem;
    }
}