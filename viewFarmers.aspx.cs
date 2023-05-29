using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FarmCentral
{
    public partial class viewFarmers : System.Web.UI.Page
    {
        SqlConnection sqlConn = new SqlConnection(@"Server=tcp:add-db-server.database.windows.net,1433;Initial Catalog=FarmCentral;Persist Security Info=False;User ID=meladmin;Password=CleganeHouse1!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
        //calling a method to display a list of existing farmers
            farmerList(); 
         
        }

        //implementation of farmerList method to return all the farmers in the database using sql statements. a databale and a gridview
        private void farmerList()
        {

            sqlConn.Open();
            SqlCommand comm = new SqlCommand("SELECT[farmerID],[firstName],[surname],[farmerPassword] FROM[FarmCentral].[dbo].[Farmer] WHERE employeeID = '" + LogIn.userID + "';", sqlConn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            farmerView.DataSource = dt;
            farmerView.DataBind();


            sqlConn.Close();
        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            //once this btton is clicked, it will redirect an employee to the employee home page
            Response.Redirect("EmployeeHome.aspx");
        }
    }
}