namespace MotoStore
{
    partial class ThemChiTietPhieuNhapForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

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
            this.dgvMH = new System.Windows.Forms.DataGridView();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.xeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.xeSốToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.xeTayGaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.xeCônTayToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tấtCảXeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.phụTùngToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tấtCảPhụTùngToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnCTPN = new System.Windows.Forms.Panel();
            this.dgvPhieuNhap = new System.Windows.Forms.DataGridView();
            this.btnLuu = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMH)).BeginInit();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhieuNhap)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvMH
            // 
            this.dgvMH.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvMH.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dgvMH.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMH.Location = new System.Drawing.Point(12, 31);
            this.dgvMH.Name = "dgvMH";
            this.dgvMH.RowHeadersWidth = 51;
            this.dgvMH.RowTemplate.Height = 24;
            this.dgvMH.Size = new System.Drawing.Size(715, 523);
            this.dgvMH.TabIndex = 0;
            this.dgvMH.Click += new System.EventHandler(this.dgvMH_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.xeToolStripMenuItem,
            this.phụTùngToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1432, 28);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // xeToolStripMenuItem
            // 
            this.xeToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.xeSốToolStripMenuItem,
            this.xeTayGaToolStripMenuItem,
            this.xeCônTayToolStripMenuItem,
            this.tấtCảXeToolStripMenuItem});
            this.xeToolStripMenuItem.Name = "xeToolStripMenuItem";
            this.xeToolStripMenuItem.Size = new System.Drawing.Size(40, 24);
            this.xeToolStripMenuItem.Text = "Xe";
            // 
            // xeSốToolStripMenuItem
            // 
            this.xeSốToolStripMenuItem.Name = "xeSốToolStripMenuItem";
            this.xeSốToolStripMenuItem.Size = new System.Drawing.Size(164, 26);
            this.xeSốToolStripMenuItem.Text = "Xe Số";
            this.xeSốToolStripMenuItem.Click += new System.EventHandler(this.xeSốToolStripMenuItem_Click);
            // 
            // xeTayGaToolStripMenuItem
            // 
            this.xeTayGaToolStripMenuItem.Name = "xeTayGaToolStripMenuItem";
            this.xeTayGaToolStripMenuItem.Size = new System.Drawing.Size(164, 26);
            this.xeTayGaToolStripMenuItem.Text = "Xe Tay Ga";
            this.xeTayGaToolStripMenuItem.Click += new System.EventHandler(this.xeTayGaToolStripMenuItem_Click);
            // 
            // xeCônTayToolStripMenuItem
            // 
            this.xeCônTayToolStripMenuItem.Name = "xeCônTayToolStripMenuItem";
            this.xeCônTayToolStripMenuItem.Size = new System.Drawing.Size(164, 26);
            this.xeCônTayToolStripMenuItem.Text = "Xe Côn Tay";
            this.xeCônTayToolStripMenuItem.Click += new System.EventHandler(this.xeCônTayToolStripMenuItem_Click);
            // 
            // tấtCảXeToolStripMenuItem
            // 
            this.tấtCảXeToolStripMenuItem.Name = "tấtCảXeToolStripMenuItem";
            this.tấtCảXeToolStripMenuItem.Size = new System.Drawing.Size(164, 26);
            this.tấtCảXeToolStripMenuItem.Text = "Tất Cả Xe";
            this.tấtCảXeToolStripMenuItem.Click += new System.EventHandler(this.tấtCảXeToolStripMenuItem_Click);
            // 
            // phụTùngToolStripMenuItem
            // 
            this.phụTùngToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tấtCảPhụTùngToolStripMenuItem});
            this.phụTùngToolStripMenuItem.Name = "phụTùngToolStripMenuItem";
            this.phụTùngToolStripMenuItem.Size = new System.Drawing.Size(84, 24);
            this.phụTùngToolStripMenuItem.Text = "Phụ Tùng";
            // 
            // tấtCảPhụTùngToolStripMenuItem
            // 
            this.tấtCảPhụTùngToolStripMenuItem.Name = "tấtCảPhụTùngToolStripMenuItem";
            this.tấtCảPhụTùngToolStripMenuItem.Size = new System.Drawing.Size(199, 26);
            this.tấtCảPhụTùngToolStripMenuItem.Text = "Tất Cả Phụ Tùng";
            this.tấtCảPhụTùngToolStripMenuItem.Click += new System.EventHandler(this.tấtCảPhụTùngToolStripMenuItem_Click);
            // 
            // pnCTPN
            // 
            this.pnCTPN.AutoScroll = true;
            this.pnCTPN.AutoSize = true;
            this.pnCTPN.Location = new System.Drawing.Point(733, 114);
            this.pnCTPN.Name = "pnCTPN";
            this.pnCTPN.Size = new System.Drawing.Size(687, 440);
            this.pnCTPN.TabIndex = 5;
            // 
            // dgvPhieuNhap
            // 
            this.dgvPhieuNhap.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvPhieuNhap.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dgvPhieuNhap.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPhieuNhap.Location = new System.Drawing.Point(733, 32);
            this.dgvPhieuNhap.Name = "dgvPhieuNhap";
            this.dgvPhieuNhap.RowHeadersWidth = 51;
            this.dgvPhieuNhap.RowTemplate.Height = 24;
            this.dgvPhieuNhap.Size = new System.Drawing.Size(687, 76);
            this.dgvPhieuNhap.TabIndex = 6;
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(1312, 566);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(108, 48);
            this.btnLuu.TabIndex = 13;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // ThemChiTietPhieuNhapForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1432, 625);
            this.Controls.Add(this.btnLuu);
            this.Controls.Add(this.dgvPhieuNhap);
            this.Controls.Add(this.pnCTPN);
            this.Controls.Add(this.dgvMH);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "ThemChiTietPhieuNhapForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Thêm Chi TIết Phiếu Nhập";
            this.Load += new System.EventHandler(this.ThemChiTietPhieuNhapForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvMH)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhieuNhap)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvMH;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem xeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem xeSốToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem xeTayGaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem xeCônTayToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem phụTùngToolStripMenuItem;
        private System.Windows.Forms.Panel pnCTPN;
        private System.Windows.Forms.DataGridView dgvPhieuNhap;
        private System.Windows.Forms.ToolStripMenuItem tấtCảXeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tấtCảPhụTùngToolStripMenuItem;
        private System.Windows.Forms.Button btnLuu;
    }
}