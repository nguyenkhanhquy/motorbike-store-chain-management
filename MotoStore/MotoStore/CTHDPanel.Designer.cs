namespace MotoStore
{
    partial class CTHDPanel
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.pnMaMH = new System.Windows.Forms.Panel();
            this.btnTang = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnGiam = new System.Windows.Forms.Button();
            this.lblSoLuong = new System.Windows.Forms.Label();
            this.lbl = new System.Windows.Forms.Label();
            this.lblDonGia = new System.Windows.Forms.Label();
            this.lblTen = new System.Windows.Forms.Label();
            this.lblMa = new System.Windows.Forms.Label();
            this.pnMaMH.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnMaMH
            // 
            this.pnMaMH.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnMaMH.Controls.Add(this.btnTang);
            this.pnMaMH.Controls.Add(this.label1);
            this.pnMaMH.Controls.Add(this.btnXoa);
            this.pnMaMH.Controls.Add(this.btnGiam);
            this.pnMaMH.Controls.Add(this.lblSoLuong);
            this.pnMaMH.Controls.Add(this.lbl);
            this.pnMaMH.Controls.Add(this.lblDonGia);
            this.pnMaMH.Controls.Add(this.lblTen);
            this.pnMaMH.Controls.Add(this.lblMa);
            this.pnMaMH.Location = new System.Drawing.Point(0, 0);
            this.pnMaMH.Name = "pnMaMH";
            this.pnMaMH.Size = new System.Drawing.Size(676, 96);
            this.pnMaMH.TabIndex = 1;
            // 
            // btnTang
            // 
            this.btnTang.Location = new System.Drawing.Point(591, 2);
            this.btnTang.Name = "btnTang";
            this.btnTang.Size = new System.Drawing.Size(40, 40);
            this.btnTang.TabIndex = 14;
            this.btnTang.Text = "+";
            this.btnTang.UseVisualStyleBackColor = true;
            this.btnTang.Click += new System.EventHandler(this.btnTang_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(387, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 16);
            this.label1.TabIndex = 13;
            this.label1.Text = "Số lượng:";
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(591, 48);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(80, 40);
            this.btnXoa.TabIndex = 12;
            this.btnXoa.Text = "Xoá";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnGiam
            // 
            this.btnGiam.Location = new System.Drawing.Point(631, 2);
            this.btnGiam.Name = "btnGiam";
            this.btnGiam.Size = new System.Drawing.Size(40, 40);
            this.btnGiam.TabIndex = 11;
            this.btnGiam.Text = "-";
            this.btnGiam.UseVisualStyleBackColor = true;
            this.btnGiam.Click += new System.EventHandler(this.btnGiam_Click);
            // 
            // lblSoLuong
            // 
            this.lblSoLuong.AutoSize = true;
            this.lblSoLuong.Location = new System.Drawing.Point(463, 9);
            this.lblSoLuong.Name = "lblSoLuong";
            this.lblSoLuong.Size = new System.Drawing.Size(0, 16);
            this.lblSoLuong.TabIndex = 10;
            // 
            // lbl
            // 
            this.lbl.AutoSize = true;
            this.lbl.Location = new System.Drawing.Point(3, 64);
            this.lbl.Name = "lbl";
            this.lbl.Size = new System.Drawing.Size(0, 16);
            this.lbl.TabIndex = 9;
            // 
            // lblDonGia
            // 
            this.lblDonGia.AutoSize = true;
            this.lblDonGia.Location = new System.Drawing.Point(387, 64);
            this.lblDonGia.Name = "lblDonGia";
            this.lblDonGia.Size = new System.Drawing.Size(0, 16);
            this.lblDonGia.TabIndex = 7;
            // 
            // lblTen
            // 
            this.lblTen.AutoSize = true;
            this.lblTen.Location = new System.Drawing.Point(3, 37);
            this.lblTen.Name = "lblTen";
            this.lblTen.Size = new System.Drawing.Size(0, 16);
            this.lblTen.TabIndex = 6;
            // 
            // lblMa
            // 
            this.lblMa.AutoSize = true;
            this.lblMa.Location = new System.Drawing.Point(3, 10);
            this.lblMa.Name = "lblMa";
            this.lblMa.Size = new System.Drawing.Size(0, 16);
            this.lblMa.TabIndex = 5;
            // 
            // CTHDPanel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pnMaMH);
            this.Name = "CTHDPanel";
            this.Size = new System.Drawing.Size(683, 105);
            this.pnMaMH.ResumeLayout(false);
            this.pnMaMH.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.Panel pnMaMH;
        public System.Windows.Forms.Label lblSoLuong;
        public System.Windows.Forms.Label lbl;
        private System.Windows.Forms.Label lblDonGia;
        private System.Windows.Forms.Label lblTen;
        public System.Windows.Forms.Label lblMa;
        public System.Windows.Forms.Button btnXoa;
        public System.Windows.Forms.Button btnGiam;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.Button btnTang;
    }
}
