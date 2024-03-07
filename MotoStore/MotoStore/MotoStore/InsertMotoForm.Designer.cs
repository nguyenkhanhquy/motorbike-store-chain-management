namespace MotoStore
{
    partial class InsertMotoForm
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
            this.button1 = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.txtLocMaNV = new System.Windows.Forms.TextBox();
            this.txtLocTenNV = new System.Windows.Forms.TextBox();
            this.cbbLocChucVu = new System.Windows.Forms.ComboBox();
            this.cbbLocTenCN = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(126, 93);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(401, 140);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(244, 196);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(61, 186);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(51, 20);
            this.checkBox1.TabIndex = 35;
            this.checkBox1.Text = "Lọc";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // txtLocMaNV
            // 
            this.txtLocMaNV.Location = new System.Drawing.Point(465, 235);
            this.txtLocMaNV.Name = "txtLocMaNV";
            this.txtLocMaNV.Size = new System.Drawing.Size(200, 22);
            this.txtLocMaNV.TabIndex = 34;
            // 
            // txtLocTenNV
            // 
            this.txtLocTenNV.Location = new System.Drawing.Point(121, 250);
            this.txtLocTenNV.Name = "txtLocTenNV";
            this.txtLocTenNV.Size = new System.Drawing.Size(270, 22);
            this.txtLocTenNV.TabIndex = 33;
            // 
            // cbbLocChucVu
            // 
            this.cbbLocChucVu.DisplayMember = "TenCN";
            this.cbbLocChucVu.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbLocChucVu.FormattingEnabled = true;
            this.cbbLocChucVu.Items.AddRange(new object[] {
            "Nhân viên quản lý",
            "Nhân viên thu ngân",
            "Nhân viên bảo dưỡng",
            "Nhân viên quản lý kho",
            "Nhân viên tư vấn - bán hàng"});
            this.cbbLocChucVu.Location = new System.Drawing.Point(465, 179);
            this.cbbLocChucVu.Name = "cbbLocChucVu";
            this.cbbLocChucVu.Size = new System.Drawing.Size(275, 24);
            this.cbbLocChucVu.TabIndex = 32;
            this.cbbLocChucVu.ValueMember = "MaCN";
            // 
            // cbbLocTenCN
            // 
            this.cbbLocTenCN.DisplayMember = "TenCN";
            this.cbbLocTenCN.FormattingEnabled = true;
            this.cbbLocTenCN.Location = new System.Drawing.Point(176, 182);
            this.cbbLocTenCN.Name = "cbbLocTenCN";
            this.cbbLocTenCN.Size = new System.Drawing.Size(270, 24);
            this.cbbLocTenCN.TabIndex = 31;
            this.cbbLocTenCN.ValueMember = "MaCN";
            // 
            // InsertMotoForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.txtLocMaNV);
            this.Controls.Add(this.txtLocTenNV);
            this.Controls.Add(this.cbbLocChucVu);
            this.Controls.Add(this.cbbLocTenCN);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.button1);
            this.Name = "InsertMotoForm";
            this.Text = "InsertMotoForm";
            this.Load += new System.EventHandler(this.InsertMotoForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.TextBox txtLocMaNV;
        private System.Windows.Forms.TextBox txtLocTenNV;
        private System.Windows.Forms.ComboBox cbbLocChucVu;
        private System.Windows.Forms.ComboBox cbbLocTenCN;
    }
}