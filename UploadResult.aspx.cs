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
    public partial class UploadResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            string strquery = "INSERT INTO Result(HomeworkId,StudId,Q1,Q2) VALUES ('" + TextBox1.Text + "','"+ TextBox2.Text+"','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(strquery, con);
            int v = cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}