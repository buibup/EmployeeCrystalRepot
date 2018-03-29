using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportEmployee
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportDocument Report = new ReportDocument();
            Report.Load(Server.MapPath("~/Report/Employee.rpt"));
            Report.SetDatabaseLogon("sa", "sa", @"localhost\SQLEXPRESS", "test");
            CrystalReportViewer1.ReportSource = Report;
        }
        protected void btnPDF_Click(object sender, EventArgs e)
        {
            ReportDocument Report = new ReportDocument();
            Report.Load(Server.MapPath("~/Report/Employee.rpt"));
            Report.SetDatabaseLogon("sa", "sa", @"localhost\SQLEXPRESS", "test");
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Report.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "EmployeeInformation");
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }

        protected void btnExcel_Click(object sender, EventArgs e)
        {
            ReportDocument Report = new ReportDocument();
            Report.Load(Server.MapPath("~/Report/Employee.rpt"));
            Report.SetDatabaseLogon("sa", "sa", @"localhost\SQLEXPRESS", "test");
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Report.ExportToHttpResponse(ExportFormatType.Excel, Response, true, "EmployeeInformation");
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }

        protected void btnWord_Click(object sender, EventArgs e)
        {
            ReportDocument Report = new ReportDocument();
            Report.Load(Server.MapPath("~/Report/Employee.rpt"));
            Report.SetDatabaseLogon("sa", "sa", @"localhost\SQLEXPRESS", "test");
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Report.ExportToHttpResponse(ExportFormatType.WordForWindows, Response, true, "EmployeeInformation");
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}