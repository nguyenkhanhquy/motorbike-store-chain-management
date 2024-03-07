namespace MotoStore
{
    partial class NudBtn
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
            this.btnGo = new System.Windows.Forms.Button();
            this.nudPageNumber = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.nudPageNumber)).BeginInit();
            this.SuspendLayout();
            // 
            // btnGo
            // 
            this.btnGo.BackgroundImage = global::MotoStore.Properties.Resources.chuot1;
            this.btnGo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnGo.Location = new System.Drawing.Point(223, 0);
            this.btnGo.Name = "btnGo";
            this.btnGo.Size = new System.Drawing.Size(45, 40);
            this.btnGo.TabIndex = 0;
            this.btnGo.UseMnemonic = false;
            this.btnGo.UseVisualStyleBackColor = true;
            this.btnGo.Click += new System.EventHandler(this.button1_Click);
            // 
            // nudPageNumber
            // 
            this.nudPageNumber.Font = new System.Drawing.Font("Times New Roman", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudPageNumber.Location = new System.Drawing.Point(0, 1);
            this.nudPageNumber.Name = "nudPageNumber";
            this.nudPageNumber.Size = new System.Drawing.Size(223, 36);
            this.nudPageNumber.TabIndex = 1;
            // 
            // NudBtn
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.nudPageNumber);
            this.Controls.Add(this.btnGo);
            this.Name = "NudBtn";
            this.Size = new System.Drawing.Size(273, 45);
            ((System.ComponentModel.ISupportInitialize)(this.nudPageNumber)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.Button btnGo;
        public System.Windows.Forms.NumericUpDown nudPageNumber;
    }
}
