using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_Dev101_Project
{
    public partial class Small_Payroll_System : System.Web.UI.Page
    {
        public object Configurationmanager { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Adding_Employee_Infor.aspx");
            String CS = ConfigurationManager.ConnectionStrings["PayrollSystemConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from Login where Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'", con);
                con.Open();
                SqlDataAdapter sqlData = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();
                sqlData.Fill(table);

                if(table.Rows.Count!=0)
                {
                    if(chckRemember.Checked)
                    {
                        Response.Cookies["NAME"].Value = txtUsername.Text;
                        Response.Cookies["PWD"].Value = txtPassword.Text;

                        Response.Cookies["NAME"].Expires = DateTime.Now.AddDays(13);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(13);

                    }
                    else
                    {
                        Response.Cookies["NAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }

                    Session["USERNAME"] = txtUsername.Text;
                    Response.Redirect("Adding_Employee_Infor.aspx");
                }
                else
                {
                    lblBanner.ForeColor = Color.DarkRed;
                    lblBanner.Text = "Incorrect Username or Password !";

                }


            }

        }
    }
}