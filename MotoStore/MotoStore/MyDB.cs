using MotoStore;
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
        SqlConnection Connectionconnection = DangNhapForm.conn;

        public SqlConnection Connection { get => Connectionconnection; }
        public void Close()
        {
            try
            {
                if (Connectionconnection != null && Connectionconnection.State == ConnectionState.Open)
                {
                    Connectionconnection.Close();
                }
            }
            catch (Exception){}
        }
        public void Open()
        {
            try
            {
                if (Connectionconnection != null && DangNhapForm.conn.State == ConnectionState.Closed)
                {
                    Connectionconnection.Open();
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
        public DataTable LayDSNhaCungCap()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From vw_DSNhaCungCap", Connection))
            {
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public DataTable ThongTinNhaCungCap(string MaNCC)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter($"Select * From fn_ThongTinNCC(@MaNCC)", Connection))
            {
                adapter.SelectCommand.Parameters.AddWithValue("@MaNCC", MaNCC);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
    }
}
