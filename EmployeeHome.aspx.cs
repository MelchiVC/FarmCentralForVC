using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FarmCentral
{
    public partial class EmployeeHome : System.Web.UI.Page
    {
        //Code Adapted from https://stackoverflow.com/questions/37911418/stop-asp-calendar-refreshing-page-on-every-change-day-month
        //https://stackoverflow.com/users/1258762/scotty

        SqlConnection sqlConn = new SqlConnection(@"Server=tcp:add-db-server.database.windows.net,1433;Initial Catalog=FarmCentral;Persist Security Info=False;User ID=meladmin;Password=CleganeHouse1!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fromDate.SelectedDate = DateTime.Now.Date;
                toDate.SelectedDate = DateTime.Now.Date;
            }


            sqlConn.Open();
            SqlCommand empName = new SqlCommand("SELECT firstName FROM [FarmCentral].[dbo].[Employee] where employeeID ='" + LogIn.userID + "';", sqlConn);
            SqlCommand empSurname = new SqlCommand("SELECT surname FROM [FarmCentral].[dbo].[Employee] where employeeID ='" + LogIn.userID + "';", sqlConn);
            EmployeeName.Text ="Welcome employee -  "+ empName.ExecuteScalar().ToString() + " " + empSurname.ExecuteScalar().ToString() + " to Farm Central ";
            sqlConn.Close();

           
            //call a method to display filter function 
            binddatagrid();
        }


        protected void viewFarmer_Click(object sender, EventArgs e)
        {
            //once this btton is clicked, it will redirect an employee to the viewFarmers page
            Response.Redirect("viewFarmers.aspx");
        }
        protected void addFarmer_Click(object sender, EventArgs e)
        {
            //once this btton is clicked, it will redirect an employee to the addFarmer page
            Response.Redirect("addFarmer.aspx");
        }

        protected void filter_Click(object sender, EventArgs e)
        {
            //method to filter search results for a farmer's products
            binddatagrid();
           
        }

        //implementation of data binding method with select statements using sqlCommand  to filter search results
        private void binddatagrid()
        {

            string farmer = selectedFarmer.Text;
            string productType = selectedProductType.Text;

            if (fromDate.SelectedDate > toDate.SelectedDate)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('From date cannot be after to date');", true);
            }

            sqlConn.Open();
            SqlCommand sqlComm;

            if (allFarmers.Checked == false && allPoductTypes.Checked == false && allDates.Checked == false)
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product] where farmerID = '" + farmer + "' and productType='" + productType + "' and dateAdded>='" + fromDate.SelectedDate.ToString("yyyy-MM-dd") + "' and dateAdded<='" + toDate.SelectedDate.ToString("yyyy-MM-dd") + "';", sqlConn);
            }
            else
            if (allFarmers.Checked == false && allPoductTypes.Checked == false && allDates.Checked == true)
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product] where farmerID = '" + farmer + "' and productType='" + productType + "';", sqlConn);
            }
            else
            if (allFarmers.Checked == false && allPoductTypes.Checked == true && allDates.Checked == false)
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product] where farmerID = '" + farmer + "' and dateAdded>='" + fromDate.SelectedDate.ToString("yyyy-MM-dd") + "' and dateAdded<='" + toDate.SelectedDate.ToString("yyyy-MM-dd") + "';", sqlConn);
            }
            else
            if (allFarmers.Checked == false && allPoductTypes.Checked == true && allDates.Checked == true)
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product] where farmerID = '" + farmer + "';", sqlConn);
            }
            else
            if (allFarmers.Checked == true && allPoductTypes.Checked == false && allDates.Checked == false)
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product] where productType='" + productType + "' and dateAdded>='" + fromDate.SelectedDate.ToString("yyyy-MM-dd") + "' and dateAdded<='" + toDate.SelectedDate.ToString("yyyy-MM-dd") + "';", sqlConn);
            }
            
            else
            if (allFarmers.Checked == true && allPoductTypes.Checked == false && allDates.Checked == true)
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product] where  productType='" + productType + "';", sqlConn);
            }
            
            else
            if (allFarmers.Checked == true && allPoductTypes.Checked == true && allDates.Checked == false)
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product] where dateAdded>='" + fromDate.SelectedDate.ToString("yyyy-MM-dd") + "' and dateAdded<='" + toDate.SelectedDate.ToString("yyyy-MM-dd") + "';", sqlConn);
            }
            else
            {
                sqlComm = new SqlCommand("SELECT [productID],[ProductName],[productType],[dateAdded],[farmerID] FROM [FarmCentral].[dbo].[Product];", sqlConn);
            }

            //sqlAdapter and datatable to populate dBase table and gridview table with farmer products
            SqlDataAdapter sqlAdpt = new SqlDataAdapter(sqlComm);
            DataTable dtb = new DataTable();
            sqlAdpt.Fill(dtb);
            GridView1.DataSource = dtb;
            GridView1.DataBind();
            sqlConn.Close();
        }
       

        protected void logOut_Click(object sender, EventArgs e)
        {
            //Logout to send users back to login page.
            Response.Redirect("LogIn.aspx");
        }
    }
}