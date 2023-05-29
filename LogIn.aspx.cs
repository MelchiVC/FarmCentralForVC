using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace FarmCentral
{
    public partial class LogIn : System.Web.UI.Page
    {
        public static string userID;
        public static bool isOldUser = true;

        SqlConnection SqlConn = new SqlConnection(@"Server=tcp:add-db-server.database.windows.net,1433;Initial Catalog=FarmCentral;Persist Security Info=False;User ID=meladmin;Password=CleganeHouse1!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            isOldUser = true;

            SqlConn.Open();
            try
            {

                if (userType.SelectedValue.Equals("Employee"))
                {
                    SqlCommand check = new SqlCommand("SELECT employeePassword FROM Employee WHERE employeeID='" + oldUserID.Text + "';", SqlConn);

                    if (check.ExecuteScalar() == null)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('COULD NOT FIND USER:((');", true);
                        SqlConn.Close();
                    }
                    else
                    {
                        string pw = check.ExecuteScalar().ToString();
                        if (pw.Equals(oldPassword.Text))
                        {
                            userID = oldUserID.Text;
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(''Welcome to Farm Central, EMPLOYEE;)');", true);
                            Response.Redirect("EmployeeHome.aspx");

                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('COULD NOT FIND USER :((');", true);
                        }
                        SqlConn.Close();
                    }

                }
                else
                    if (userType.SelectedValue.Equals("Farmer"))
                {

                    SqlCommand check = new SqlCommand("SELECT farmerPassword FROM Farmer WHERE farmerID='" + oldUserID.Text + "';", SqlConn);

                        

                    if (check.ExecuteScalar() == null)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('That UserID and Password combination does not exist');", true);
                        SqlConn.Close();
                    }else
                    {
                        string pw = check.ExecuteScalar().ToString();
                        if (pw.Equals(oldPassword.Text))
                        {
                            userID = oldUserID.Text;
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Welcome to Farm Central, FARMER;)');", true);
                            Response.Redirect("FarmerHome.aspx");

                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('COULD NOT FIND USER :(( ');", true);
                        }
                        SqlConn.Close();
                    }
                    

                }


            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('SYSTEM FAULT');", true);
            }
            SqlConn.Close();
        }

        protected void oldUserID0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void oldEmployeeID_TextChanged(object sender, EventArgs e)
        {

        } 

       
    }
}