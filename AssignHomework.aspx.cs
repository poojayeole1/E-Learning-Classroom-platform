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
    public partial class AssignHomework : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            string strquery = "INSERT INTO Assign(Id,Q1,Q2,AssignedDate,DueDate) VALUES ('" + TextBox3.Text +"','" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox4.Text+"','"+TextBox5.Text+"')";
            SqlCommand cmd = new SqlCommand(strquery, con);
            int v = cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int index = pnlTextBoxes.Controls.OfType<TextBox>().ToList().Count + 1;
            this.CreateTextBox("txtDynamic" + index);
        }

        private void CreateTextBox(string id)
        {
            TextBox txt = new TextBox();
            txt.ID = id;
            pnlTextBoxes.Controls.Add(txt);

            Literal lt = new Literal();
            lt.Text = "<br />";
            pnlTextBoxes.Controls.Add(lt);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
}