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
    public partial class ViewResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            if (TextBox1.Text != "")
            {
                SqlCommand cmd = new SqlCommand("SELECT HomeworkId,StudId,Q1,Q2 FROM Result WHERE homeworkId=@HomeworkId AND StudId=@StudId", con);
                SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@HomeworkId", int.Parse(TextBox1.Text));
                SqlParameter sqlParameter1 = cmd.Parameters.AddWithValue("@StudId", int.Parse(TextBox4.Text));
                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    TextBox2.Text = da.GetValue(2).ToString();
                    TextBox3.Text = da.GetValue(3).ToString();
                   
                }
            }
            con.Close();
        }
    }
}