using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace MotoStore
{
    public partial class ViewMotoForm : Form
    {
        Moto moto = new Moto();
        DataTable dataTable;
        NudBtn nudbtn;
        bool flag = true;
        public ViewMotoForm()
        {
            InitializeComponent();

        }

        private void ViewMotoForm_Load(object sender, EventArgs e)
        {
            lblTatCaXeMay_Click(sender, e);
        }
        private void ShowDataOnPage(int page)
        {
            foreach (Control control in pnPage.Controls)
            {
                control.Dispose();
            }
            pnPage.Controls.Clear();
            flag = true;
            if (dataTable.Rows.Count == 0)
            {
                Label lbl = new Label() { Text = "Không tìm thấy", Font = new Font("Arial", 12, FontStyle.Bold) };
                pnPage.Controls.Add(lbl);
                return;
            }
            int j = 0;
            for (int i = (page - 1) * 12; i < dataTable.Rows.Count && i < page * 12; i++)
            {
                Panel panel = new Panel()
                {
                    Size = new Size(235, 269),
                    Location = new Point(15 + 240 * (i % 3), (j / 3) * 290),
                    BorderStyle = BorderStyle.FixedSingle,
                    Name = dataTable.Rows[i][4].ToString()

                };
                ImageConverter converter = new ImageConverter();
                Image hinhanh = (Image)converter.ConvertFrom(dataTable.Rows[i][0]);
                PictureBox pictureBox = new PictureBox()
                {
                    Image = hinhanh,
                    Size = new Size(235, 200),
                    SizeMode = PictureBoxSizeMode.StretchImage,
                    Location = new Point(0, 0)
                };
                pictureBox.BringToFront();
                Label[] lbls = new Label[]
                {
                    new Label()
                    {
                        Text = dataTable.Rows[i][1].ToString(),
                        TextAlign = ContentAlignment.MiddleCenter,
                        Size = new Size(235, 23),
                        Location = new Point(0, 200)
                    },
                     new Label()
                    {
                          Text = dataTable.Rows[i][2].ToString(),
                        TextAlign = ContentAlignment.MiddleCenter,
                        Size = new Size(235, 23),
                        Location = new Point(0, 223)
                    },
                    new Label()
                    {
                         Text = dataTable.Rows[i][3].ToString(),
                        TextAlign = ContentAlignment.MiddleCenter,
                        Size = new Size(235, 23),
                        Location = new Point(0, 246)
                    },
                };
                panel.Controls.Add(pictureBox);
                panel.Controls.AddRange(lbls);
                pnPage.Controls.Add(panel);
                j++;
            }
            List<Button> buttons = new List<Button>();
            buttons.Add(new Button() { Text = "Đầu", Name = "1", Size = new Size(55, 40) });
            if (page != 1)
                buttons.Add(new Button() { Text = (page - 1).ToString(), Name = (page - 1).ToString(), Size = new Size(45, 40) });
            buttons.Add(new Button() { Text = (page).ToString(), Name = (page).ToString(), BackColor = Color.Violet, Size = new Size(45, 40) });
            if (page != Math.Ceiling((double)dataTable.Rows.Count / 12))
                buttons.Add(new Button() { Text = (page + 1).ToString(), Name = (page + 1).ToString(), Size = new Size(45, 40) });
            buttons.Add(new Button() { Text = "GO", BackColor = Color.MediumVioletRed, Size = new Size(45, 40) });
            buttons.Add(new Button() { Text = "Cuối", Name = Math.Ceiling((double)dataTable.Rows.Count / 12) + "", Size = new Size(55, 40) });
            ArrangeButtonsInPanel(buttons, j);
        }
        private void ArrangeButtonsInPanel(List<Button> buttons, int j)
        {
            int numButtons = buttons.Count;
            int x = (818 - numButtons * 60) / 2;
            int y = (j / 4) * 280 + 340;
            nudbtn = new NudBtn()
            {
                Location = new Point(x, y),
                Size = new Size(numButtons * 45 + 20, 45)
            };
            nudbtn.nudPageNumber.Size = new Size(numButtons * 45 - 15, nudbtn.nudPageNumber.Height);
            nudbtn.btnGo.Location = new Point(numButtons * 45 - 15, 0);
            nudbtn.btnGo.Click += BtnGo_Click;
            nudbtn.nudPageNumber.KeyDown += NudPageNumber_KeyDown;
            foreach (Button button in buttons)
            {
                button.Location = new Point(x, y);
                button.Click += Button_Click;
                pnPage.Controls.Add(button);
                x += button.Width + 0;
            }
        }

        private void NudPageNumber_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                BtnGo_Click(sender, e);
        }

        private void BtnGo_Click(object sender, EventArgs e)
        {
            if (nudbtn.nudPageNumber.Value <= 0 || nudbtn.nudPageNumber.Value > Math.Ceiling((decimal)dataTable.Rows.Count / 12))
            {
                MessageBox.Show("Trang này không tồn tại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            ShowDataOnPage(Convert.ToInt32(nudbtn.nudPageNumber.Value));
        }

        private void Button_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            if (button.Text == "GO")
            {
                if (flag == true)
                    MoveUp(button);
                else
                    MoveDown(button);
            }
            else
            {
                ShowDataOnPage(Convert.ToInt32(button.Name));
            }
        }

        private async void MoveDown(Button button)
        {

            for (int i = 72; i >= 0; i -= 8)
            {
                nudbtn.Height = i;
                nudbtn.Top = nudbtn.Top + i / 8;
                await Task.Delay(10);
            }
            pnPage.Controls.Remove(nudbtn);
            flag = true;
        }

        public async void MoveUp(Button button)
        {
            pnPage.Controls.Add(nudbtn);
            for (int i = 0; i <= 72; i += 8)
            {
                nudbtn.Height = i;
                nudbtn.Top = button.Bottom - i;
                await Task.Delay(10);
            }
            flag = false;
        }

        private void lblTatCaXeMay_Click(object sender, EventArgs e)
        {
            dataTable = moto.GetMoto();
            ShowDataOnPage(1);
        }

        private void lblPhuTung_Click(object sender, EventArgs e)
        {

        }

        private void lblXeTayGa_Click(object sender, EventArgs e)
        {
            dataTable = moto.GetMoto("Xe Tay Ga");
            ShowDataOnPage(1);
        }

        private void lblXeSo_Click(object sender, EventArgs e)
        {
            dataTable = moto.GetMoto("Xe Số");
            ShowDataOnPage(1);

        }

        private void lblXeConTay_Click(object sender, EventArgs e)
        {
            dataTable = moto.GetMoto("Xe Côn Tay");
            ShowDataOnPage(1);
        }

        private void lblLoc_Click(object sender, EventArgs e)
        {

        }
    }
}
