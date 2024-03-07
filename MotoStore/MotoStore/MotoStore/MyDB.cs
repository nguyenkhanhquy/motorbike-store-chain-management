using DocumentFormat.OpenXml.Drawing;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MotoStore
{
    internal class MyDB
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-E2CCN2H;Initial Catalog=QLMoToStore;Integrated Security=True");

        public SqlConnection Connection { get => connection; }
        public void Close()
        {
            try
            {
                if (connection != null && connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
            catch (Exception){}
        }
        public void Open()
        {
            try
            {
                if (connection != null && connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
            }
            catch (Exception){}
        }
        public DataTable LayDSChiNhanh()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_DSChiNhanh", Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        
    }
}
