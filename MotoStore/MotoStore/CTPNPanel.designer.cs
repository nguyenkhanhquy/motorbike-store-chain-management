namespace MotoStore
{
    partial class CTPNPanel
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
            this.pnMaMH.Controls.Add(this.lblSoLuong);
            this.pnMaMH.Controls.Add(this.lbl);
            this.pnMaMH.Controls.Add(this.lblDonGia);
            this.pnMaMH.Controls.Add(this.lblTen);
            this.pnMaMH.Controls.Add(this.lblMa);
            this.pnMaMH.Location = new System.Drawing.Point(4, 6);
            this.pnMaMH.Name = "pnMaMH";
            this.pnMaMH.Size = new System.Drawing.Size(676, 96);
            this.pnMaMH.TabIndex = 0;
            // 
            // lblSoLuong
            // 
            this.lblSoLuong.AutoSize = true;
            this.lblSoLuong.Location = new System.Drawing.Point(427, 10);
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
            this.lblDonGia.Location = new System.Drawing.Point(427, 64);
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
            // CTPNPanel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pnMaMH);
            this.Name = "CTPNPanel";
            this.Size = new System.Drawing.Size(683, 105);
            this.pnMaMH.ResumeLayout(false);
            this.pnMaMH.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.Panel pnMaMH;
        private System.Windows.Forms.Label lbl;
        private System.Windows.Forms.Label lblDonGia;
        private System.Windows.Forms.Label lblTen;
        private System.Windows.Forms.Label lblMa;
        public System.Windows.Forms.Label lblSoLuong;
    }
}
