using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    public partial class CTPNPanel : UserControl
    {
        public CTPNPanel(string MaMH, string TenMH, string SoLuong, string DonGia, string s)
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

            return obj is CTPNPanel panel && lblMa.Text == panel.lblMa.Text
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

        public static bool operator ==(CTPNPanel left, CTPNPanel right)
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

        public static bool operator !=(CTPNPanel left, CTPNPanel right)
        {
            return !(left == right);
        }
    }
}

