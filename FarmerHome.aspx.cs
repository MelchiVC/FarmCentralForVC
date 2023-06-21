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
    public partial class FarmerHome : System.Web.UI.Page
    {
        SqlConnection sqlConn = new SqlConnection(@"Server=tcp:add-db-server.database.windows.net,1433;Initial Catalog=FarmCentral;Persist Security Info=False;User ID=meladmin;Password=CleganeHouse1!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            FarmerName.Text = "Welcome farmer  -  " +LogIn.userID;           
            productList();
        }

        private void productList()
        {

            sqlConn.Open();
            SqlCommand sqlComm = new SqlCommand("SELECT[productID],[ProductName],[productType],[dateAdded] FROM[FarmCentral].[dbo].[Product] WHERE farmerID = '" + LogIn.userID + "';", sqlConn);
            SqlDataAdapter sqlAdpt = new SqlDataAdapter(sqlComm);
            DataTable dtb = new DataTable();
            sqlAdpt.Fill(dtb);
            GridView1.DataSource = dtb;
            GridView1.DataBind();


            sqlConn.Close();
        }

        protected void insertProduct_Click(object sender, EventArgs e)
        {
            try
            {
                sqlConn.Open();
                SqlCommand comm = new SqlCommand("Insert into Product(farmerID, ProductName, productType, dateAdded) Values('"+LogIn.userID+ "', '" + productName.Text + "', '" + productType.Text + "', GETDATE());", sqlConn);
                comm.ExecuteNonQuery();
                //if statement to ensure that all fields are entered when entering a new product
                if (productName.Text.Length == 0 || productType.Text.Length == 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('ALL FIELDS ARE REQUIRED');", true);
                }
                else
                {
                    sqlConn.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Product succesfully added.');", true);
                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
                }
            }
            catch (SqlException)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('System is down.');", true);
                sqlConn.Close();
            }
        }
        protected void clearButton_Click(object sender, EventArgs e)
        {
            productName.Text = "";
            productType.Text = ""; 
          

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}