using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using System.Configuration;
using CrystalDecisions.Shared;
using System.IO;


namespace ELearning
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportDocument rprt = new ReportDocument();
            rprt.Load(Server.MapPath("~/CrystalReport1.rpt"));

            string connStr = ConfigurationManager.ConnectionStrings["ELearningConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT Id,Q1,Q2,AssignedDate,DueDate from Assign;", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);

            ReportDocument rpt = new ReportDocument();
            rpt.Load(Server.MapPath("~/CrystalReport1.rpt"));
            rpt.SetDataSource(ds.Tables["Table"]);
            CrystalReportViewer1.ReportSource = rpt;

            rpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Student Information");

        }
    }
}