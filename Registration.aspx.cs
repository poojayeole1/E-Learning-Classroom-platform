using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELearning
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Login.aspx");
            ///string str;
            //   str= @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =| DataDirectory |\ELearning.mdf; Integrated Security = True; Connect Timeout = 30";
            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;
          
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            string strquery = "INSERT INTO Registration(Name,ContactNo,Email,Address,Password,ConfirmPassword) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(strquery, con);
            cmd.ExecuteNonQuery();
            con.Close();

            if (Page.IsValid)
            {
                Button1.Text = "My form is valid!";
            }
        }
    }
}
