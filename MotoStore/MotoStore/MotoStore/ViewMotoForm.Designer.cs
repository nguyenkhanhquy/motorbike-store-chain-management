namespace MotoStore
{
    partial class ViewMotoForm
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
            this.lblTatCaXeMay = new System.Windows.Forms.Label();
            this.lblPhuTung = new System.Windows.Forms.Label();
            this.lblXeTayGa = new System.Windows.Forms.Label();
            this.lblXeSo = new System.Windows.Forms.Label();
            this.lblXeConTay = new System.Windows.Forms.Label();
            this.lblLoc = new System.Windows.Forms.Label();
            this.pnPage = new System.Windows.Forms.Panel();
            this.SuspendLayout();
            // 
            // lblTatCaXeMay
            // 
            this.lblTatCaXeMay.AutoSize = true;
            this.lblTatCaXeMay.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTatCaXeMay.Location = new System.Drawing.Point(13, 33);
            this.lblTatCaXeMay.Name = "lblTatCaXeMay";
            this.lblTatCaXeMay.Size = new System.Drawing.Size(150, 20);
            this.lblTatCaXeMay.TabIndex = 0;
            this.lblTatCaXeMay.Text = "TẤT CẢ XE MÁY";
            this.lblTatCaXeMay.Click += new System.EventHandler(this.lblTatCaXeMay_Click);
            // 
            // lblPhuTung
            // 
            this.lblPhuTung.AutoSize = true;
            this.lblPhuTung.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPhuTung.Location = new System.Drawing.Point(188, 33);
            this.lblPhuTung.Name = "lblPhuTung";
            this.lblPhuTung.Size = new System.Drawing.Size(102, 20);
            this.lblPhuTung.TabIndex = 1;
            this.lblPhuTung.Text = "PHỤ TÙNG";
            this.lblPhuTung.Click += new System.EventHandler(this.lblPhuTung_Click);
            // 
            // lblXeTayGa
            // 
            this.lblXeTayGa.AutoSize = true;
            this.lblXeTayGa.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblXeTayGa.Location = new System.Drawing.Point(362, 33);
            this.lblXeTayGa.Name = "lblXeTayGa";
            this.lblXeTayGa.Size = new System.Drawing.Size(101, 20);
            this.lblXeTayGa.TabIndex = 2;
            this.lblXeTayGa.Text = "XE TAY GA";
            this.lblXeTayGa.Click += new System.EventHandler(this.lblXeTayGa_Click);
            // 
            // lblXeSo
            // 
            this.lblXeSo.AutoSize = true;
            this.lblXeSo.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblXeSo.Location = new System.Drawing.Point(531, 33);
            this.lblXeSo.Name = "lblXeSo";
            this.lblXeSo.Size = new System.Drawing.Size(61, 20);
            this.lblXeSo.TabIndex = 3;
            this.lblXeSo.Text = "XE SỐ";
            this.lblXeSo.Click += new System.EventHandler(this.lblXeSo_Click);
            // 
            // lblXeConTay
            // 
            this.lblXeConTay.AutoSize = true;
            this.lblXeConTay.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblXeConTay.Location = new System.Drawing.Point(676, 33);
            this.lblXeConTay.Name = "lblXeConTay";
            this.lblXeConTay.Size = new System.Drawing.Size(115, 20);
            this.lblXeConTay.TabIndex = 4;
            this.lblXeConTay.Text = "XE CÔN TAY";
            this.lblXeConTay.Click += new System.EventHandler(this.lblXeConTay_Click);
            // 
            // lblLoc
            // 
            this.lblLoc.AutoSize = true;
            this.lblLoc.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLoc.Location = new System.Drawing.Point(841, 32);
            this.lblLoc.Name = "lblLoc";
            this.lblLoc.Size = new System.Drawing.Size(45, 20);
            this.lblLoc.TabIndex = 5;
            this.lblLoc.Text = "LỌC";
            this.lblLoc.Click += new System.EventHandler(this.lblLoc_Click);
            // 
            // pnPage
            // 
            this.pnPage.AutoScroll = true;
            this.pnPage.Location = new System.Drawing.Point(12, 56);
            this.pnPage.Name = "pnPage";
            this.pnPage.Size = new System.Drawing.Size(1004, 634);
            this.pnPage.TabIndex = 6;
            // 
            // ViewMotoForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1028, 702);
            this.Controls.Add(this.pnPage);
            this.Controls.Add(this.lblLoc);
            this.Controls.Add(this.lblXeConTay);
            this.Controls.Add(this.lblXeSo);
            this.Controls.Add(this.lblXeTayGa);
            this.Controls.Add(this.lblPhuTung);
            this.Controls.Add(this.lblTatCaXeMay);
            this.Name = "ViewMotoForm";
            this.Text = "Danh Sách Xe";
            this.Load += new System.EventHandler(this.ViewMotoForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        #endregion

        private System.Windows.Forms.Label lblTatCaXeMay;
        private System.Windows.Forms.Label lblPhuTung;
        private System.Windows.Forms.Label lblXeTayGa;
        private System.Windows.Forms.Label lblXeSo;
        private System.Windows.Forms.Label lblXeConTay;
        private System.Windows.Forms.Label lblLoc;
        private System.Windows.Forms.Panel pnPage;
    }
}

