using DocumentFormat.OpenXml.Drawing.Diagrams;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar;

namespace MotoStore
{
    public partial class CTHDPanel : UserControl
    {
        private Invoice invoice = new Invoice();

        public CTHDPanel(string MaMH, string TenMH, string SoLuong, string DonGia, string s)
        {
            InitializeComponent();
            lblMa.Text = MaMH;
            lblTen.Text = TenMH;
            lbl.Text = s;
            lblSoLuong.Text = SoLuong;
            lblDonGia.Text = DonGia;
        }
        public override bool Equals(object obj)
        {

            return obj is CTHDPanel panel && lblMa.Text == panel.lblMa.Text
                && lblTen.Text == panel.lblTen.Text
                && lbl.Text == panel.lbl.Text
                && lblDonGia.Text == panel.lblDonGia.Text;
        }

        public override int GetHashCode()
        {
            int hashCode = 1399829547;
            hashCode = hashCode * -1521134295 + EqualityComparer<string>.Default.GetHashCode(lblMa.Text);
            hashCode = hashCode * -1521134295 + EqualityComparer<string>.Default.GetHashCode(lblTen.Text);
            hashCode = hashCode * -1521134295 + EqualityComparer<string>.Default.GetHashCode(lbl.Text);
            hashCode = hashCode * -1521134295 + EqualityComparer<string>.Default.GetHashCode(lblDonGia.Text);
            return hashCode;
        }

        public static bool operator ==(CTHDPanel left, CTHDPanel right)
        {
            if (ReferenceEquals(left, right))
            {
                return true;
            }

            if (left is null || right is null)
            {
                return false;
            }

            return left.Equals(right);
        }

        public static bool operator !=(CTHDPanel left, CTHDPanel right)
        {
            return !(left == right);
        }

        private void btnTang_Click(object sender, EventArgs e)
        {
            int sl = (int.Parse(lblSoLuong.Text) + 1);
            lblSoLuong.Text = sl.ToString();
            if (pnMaMH.Name.Substring(0, 2) == "BD")
                invoice.SuaCTHDBaoDuong(this.Name, pnMaMH.Name, lbl.Text.Substring(lbl.Text.LastIndexOf(' ') + 1), int.Parse(lblSoLuong.Text));
            else
                invoice.SuaCTHDMatHang(this.Name, pnMaMH.Name, int.Parse(lblSoLuong.Text));
        }

        private void btnGiam_Click(object sender, EventArgs e)
        {
            int sl = (int.Parse(lblSoLuong.Text) - 1);
            if (sl > 0)
            {
                lblSoLuong.Text = sl.ToString();
                if(pnMaMH.Name.Substring(0,2)=="BD")
                   invoice.SuaCTHDBaoDuong(this.Name, pnMaMH.Name, lbl.Text.Substring(lbl.Text.LastIndexOf(' ') + 1), int.Parse(lblSoLuong.Text));
                else
                   invoice.SuaCTHDMatHang(this.Name, pnMaMH.Name, int.Parse(lblSoLuong.Text));   
            }
            else
            {
                btnXoa_Click(sender, e);
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if(pnMaMH.Name.Substring(0, 2) == "BD")
                invoice.XoaCTHDBaoDuong(this.Name, pnMaMH.Name, lbl.Text.Substring(lbl.Text.LastIndexOf(' ') + 1));
            else
                invoice.XoaCTHDMatHang(this.Name, pnMaMH.Name);
            this.Dispose();
        }
    }
}
