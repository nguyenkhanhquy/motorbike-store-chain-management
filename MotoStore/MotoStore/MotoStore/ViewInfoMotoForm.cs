using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    public partial class ViewInfoMotoForm : Form
    {
        Moto moto = new Moto();
        string[] ThongSoKyThuat = new string[]
        {
            "",
            "",
            "Hãng",
            "Loại xe",
            "Màu sắc",
            "Khối Lượng bản thân",
            "Dài x Rộng x Cao",
            "Khoảng cách trục bánh xe",
            "Độ cao Yên",
            "Khoảng sáng gầm xe",
            "Dung tích bình xăng",
            "Kích cỡ lớp trước",
            "Kích cỡ lớp sau",
            "Phuộc trước",
            "Phuộc sau",
            "Loại động cơ",
            "Công suất tối đa",
            "Dung tích nhớt máy",
            "Loại truyền động",
            "Hệ thống khởi động",
            "Moment cực đại",
            "Dung tích xy-lanh",
            "Đường kính x Hành trình pít tông",
            "Tỷ số nén",
            "Động cơ - Công nghệ",
            "Đơn giá"
        };
        public ViewInfoMotoForm()
        {
            InitializeComponent();
        }

        private void ViewInfoMotoForm_Load(object sender, EventArgs e)
        {
            //DataTable data = moto.GetInfoMoto("XE00001");
            //for(int i=2;i<data.Columns.Count;i++) 
            //{
            //    dataGridView1.
            //}
            
        }
        
    }
}
