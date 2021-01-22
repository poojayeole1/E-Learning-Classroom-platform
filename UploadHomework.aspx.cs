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
    public partial class UploadHomework : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            string strquery = "INSERT INTO Upload(HomeworkId,StudId,Q1,Q2) VALUES ('" + TextBox1.Text + "','"+TextBox4.Text+"','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlCommand cmd = new SqlCommand(strquery, con);
            int v1 = cmd.ExecuteNonQuery();
            var v = v1;
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string strquery = "DELETE FROM Upload WHERE HomeworkId = ('" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand(strquery, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}