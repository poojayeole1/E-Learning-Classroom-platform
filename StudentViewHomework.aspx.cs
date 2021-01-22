using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ELearning
{
    public partial class StudentViewHomework : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            if (TextBox1.Text != "")
            {
                SqlCommand cmd = new SqlCommand("SELECT Id,Q1,Q2,AssignedDate,DueDate FROM Assign WHERE Id=@Id", con);
                SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@Id", int.Parse(TextBox1.Text));
                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    TextBox2.Text = da.GetValue(1).ToString();
                    TextBox3.Text = da.GetValue(2).ToString();
                    TextBox4.Text = da.GetValue(3).ToString();
                    TextBox5.Text = da.GetValue(4).ToString();
                }
            }
            con.Close();
        }
    }
}