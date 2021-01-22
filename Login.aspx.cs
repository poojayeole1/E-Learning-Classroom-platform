using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ELearning
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string strquery = "SELECT COUNT(*) FROM Registration WHERE name='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(strquery, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if ((TextBox1.Text == "Admin") && (TextBox2.Text == "Admin@123"))
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("AdminFeatures.aspx");
            }
            else if (dt.Rows[0][0].ToString() == "1")
            {
                //Console.Out.WriteLine("Login Successful");
                Response.Redirect("Features.aspx");
            }
            else
                MessageBox.Show("Invalid username or password");
            con.Close();

            if (Page.IsValid)
            {
                Button1.Text = "My form is valid!";
            }
        }  
    }
}