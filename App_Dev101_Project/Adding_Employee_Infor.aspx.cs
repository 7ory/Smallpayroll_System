using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace App_Dev101_Project
{
    public partial class Adding_Employee_Infor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double Rate;
            double Hours;
            string Position;
            double Ads;
            string Name;
            string Surname;
            string WorkID;
            string Branch;

            Branch = cmbBranch.SelectedItem.ToString();
            Name = TxtFName.Text;
            Surname = TxtSurname.Text;
            WorkID = TxtID.Text;
            Rate = double.Parse(TxtRate.Text);
            Hours = double.Parse(TxtHours.Text);
            Position = cmbPosition.SelectedItem.ToString();

            if(Position == "chief Construction Officer")
            {
                Ads = Rate * 3;
            }
            else if(Position == "Senior Manager - Construction")
            {
                Ads = Rate * 2;
            }
            else if(Position == "Construction Engineer")
            {
                Ads = Rate*1.5;
            }
            else if(Position == "Saftey Director")
            {
                Ads = Rate*1;
            }
            else if(Position == "Civil Engineer")
            {
                Ads = Rate * 0.85;
            }
            else if(Position == "Build Services Director")
            {
                Ads = Rate * 0.6;
            }
            else
            {
                Ads = Rate * 0.05;
            }

            Payments P = new Payments();
            lblEmployee.Text = "Employee: " + Name + " " + Surname + "(" + WorkID + ").";
            lblPosition.Text ="Position: "+Position;
            lblBranch.Text = "Working: " + "at the" + " " + Branch + " " + "Branch.";
            lblEarned.Text = "Earned: " + " " + P.WeeklypayWithNoDeductions().ToString("C")+" "+"this week.";

        }

        protected void btnCaptureInfor_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=laptop-e7vdlu1u\sql2014express;Initial Catalog=PayrollSystem;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[UpdatedTable]
           ([EmployeeID]
           ,[EmployeeSAID]
           ,[EmployeeFirstname]
           ,[EmployeeMiddlename]
           ,[EmployeeLastname]
           ,[DOB]
           ,[EmployeeAddress1]
           ,[EmployeeAddress2]
           ,[EmployeeCity]
           ,[EmployeeProvince]
           ,[EmployeeCellNumber]
           ,[EmployeeDateOfHire]
           ,[EmployeePayHourlyRate]
           ,[WorkWeekNumber]
           ,[EmployeeHoursWorkedDuringTheWeek]
           ,[Position]
           ,[Branch]
           ,[EmployeeBankName]
           ,[EmployeeAccountNumber])
     VALUES
           ('" + TxtID.Text + "', '" + TxtSAID.Text + "', '" + TxtFName.Text + "', '" + TxtMiddleName.Text + "','" + TxtSurname.Text + "','" + TxtDOBYear.Text + "','" + TxtAddress1.Text + "','" + TxtAddress2.Text + "','" + TxtCity.Text + "','" + DrpProvince.SelectedItem.ToString() + "','" + TxtCellnumber.Text + "','" + TxtDOBHire.Text + "','" + TxtRate.Text + "','" + TxtWeekNumber.Text + "','" + TxtHours.Text + "','" + cmbPosition.SelectedItem.ToString() + "','" + cmbBranch.SelectedItem.ToString() + "','" + DrpBank.SelectedItem.ToString() + "','" + TxtAccNum.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('User has been succefully registered')</script>");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Small Payroll System.aspx");
        }

        protected void cmbBranch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TxtFName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnViewEmployees_Click(object sender, EventArgs e)
        {
            Response.Redirect("View Employees.aspx");
        }
    }

 
    ////////sqlCmd.Parameters.AddWithValue("Name", TxtID.Text);
    ////////sqlCmd.Parameters.AddWithValue("Suranem", TxtSAID.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeFirstname", TxtFName.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeMiddlename", TxtMiddleName.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeLastname", TxtSurname.Text);
    //sqlCmd.Parameters.AddWithValue("DOB", TxtDOBYear.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeAddress1", TxtAddress1.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeAddress2", TxtAddress2.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeCity", TxtCity.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeProvince", DrpProvince.SelectedItem.ToString());
    //sqlCmd.Parameters.AddWithValue("EmployeeCellNumber", TxtCellnumber.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeeDateOfHire", TxtDOBHire.Text);
    //sqlCmd.Parameters.AddWithValue("EmployeePayHourlyRate", TxtRate.Text);
    //sqlCmd.Parameters.AddWithValue("WorkWeekNumber", TxtWeekNumber.Text);
    //sqlCmd.Parameters.AddWithValue("HoursEmployeeWorkedDuringTheWeek", TxtHours.Text);
    //sqlCmd.Parameters.AddWithValue("Position", cmbPosition.SelectedItem.ToString());
    //sqlCmd.Parameters.AddWithValue("Branch", cmbBranch.SelectedItem.ToString());
    //sqlCmd.Parameters.AddWithValue("EmployeeBankName", DrpBank.SelectedItem.ToString());
    //sqlCmd.Parameters.AddWithValue("EmployeeAccountNumber", TxtAccNum.Text);
}