using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FarmCentral
{
    public partial class addFarmer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=tcp:add-db-server.database.windows.net,1433;Initial Catalog=FarmCentral;Persist Security Info=False;User ID=meladmin;Password=CleganeHouse1!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertFarmer_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                SqlCommand comm = new SqlCommand("Insert into Farmer(farmerID, employeeID, firstName, surname, farmerPassword) Values('"+farmerID.Text+ "', '" + LogIn.userID + "', '" + farmerName.Text + "', '" + farmerSurname.Text + "', '" + farmerPassword.Text + "');", con);
                comm.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Farmer succesfully added.');", true);
                
            }
            catch (SqlException)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Username already exists, please choose another username.');", true);
                con.Close();
            }
            
        }
        protected void clearButton_Click(object sender, EventArgs e)
        {
            farmerID.Text = "";
            farmerName.Text = "";
            farmerSurname.Text = "";
            farmerPassword.Text = ""; 

        }

        

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeHome.aspx");
        }


    }
}