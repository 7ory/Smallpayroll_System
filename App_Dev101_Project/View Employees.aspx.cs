using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_Dev101_Project
{
    public partial class View_Employees : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();  
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["PayrollSystemConnectionString"].ToString();
                con.Open();
                 SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select  * from [UpdatedTable]";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border = '1'>");
                table.Append("<tr><th>EmployeeID</th><th>EmployeeSAID</th><th>EmployeeFirstname</th><th>EmployedeMiddleName</th><th>EmployeeLAstName</th><th>DateOfBirth</th><th>EmployeeAddress1</th><th>EmployeeAddress2</th><th>EmployeeCity</th><th>EmployeeProvince</th><th>EmployeeCellnumber</th><th>EmployeeDateOfHire</th><th>EmployeePayHourlyRate</th><th>WorkWeekNumber</th><th>WorkedHours</th><th>Postion</th><th>Branch</th><th>BankName</th><th>AccountNo.</th>");
                table.Append("</tr>");

                if(rd.HasRows)
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("<td>" + rd[3] + "</td>");
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("<td>" + rd[5] + "</td>");
                        table.Append("<td>" + rd[6] + "</td>");
                        table.Append("<td>" + rd[7] + "</td>");
                        table.Append("<td>" + rd[8] + "</td>");
                        table.Append("<td>" + rd[9] + "</td>");
                        table.Append("<td>" + rd[10] + "</td>");
                        table.Append("<td>" + rd[11] + "</td>");
                        table.Append("<td>" + rd[12] + "</td>");
                        table.Append("<td>" + rd[13] + "</td>");
                        table.Append("<td>" + rd[14] + "</td>");
                        table.Append("<td>" + rd[15] + "</td>");
                        table.Append("<td>" + rd[16] + "</td>");
                        table.Append("<td>" + rd[17] + "</td>");
                        table.Append("<td>" + rd[18] + "</td>");
                        table.Append("</td>");
                    }


                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();

            }

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Small Payroll System.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adding_Employee_Infor.aspx");

        }
    }
}