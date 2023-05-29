ReadMe for Farm Central Management System

————————————————

Introduction



Farm Central Management System is a Web Application developed with C# ASP.NET WebForms , along with an Sql Server database that migrates to an Azure Database. This application allows Employees, as the Admins of Farm Central’s Application, to manage all the Farmers and their Products within the system; and allows Farmers to manage their products.



———————————————————————————

Requirements:



Desktop/Laptop/Virtual Machine,

Visual Studio 2019/2022

———————————————————————————

Login details:



As Admin, User ID: EMP001, Password: 1234567

As Farmer, User ID: F001, Password: Ligue1UberEats



———————————————————————————

Instructions



Launch the application. Upon launching the application, the user will be directed to the Farm Central Login Page.  The user will be required to select a role either as ‘Employee’ or ‘Farmer’’ before then entering the login credentials (Username and Password).
As a logged-in Farmer, the user will be directed to the Farmer Home Page with a welcome message and a table displaying the Farmer’s products.
To create a new Product by entering the name of the product and the product type. Once these have been entered and the “Add Product” button has been clicked, the table will refresh and display the new products added, belonging to the Farmer. Once completed, click the “Logout” button to exit.
As a logged-in Employee, a user will be redirected to the Employee Home Page with a welcome message, the option to ‘Add New Farmer’, view Farmers, and Farmer Products with a Search feature that allows you to filter a product by the Farmer ID, Product Type and the Date in which the product was added. 
To Add a new farmer, Click on the ‘Add New Farmer’ button and the user will be redirected to the AddFarmer Page. The user will now have to provide the new Farmer with a Username, Full name, and Password. A success message should be displayed afterwards and if not, the user will receive an error message specifying the issue. Then, Click on the Home button to go back to the Employee Home Page.
To view list of Farmers, simply click on the “View Farmer List” Button. Once done, click Go Back to go back to the Employee Home Page
To use the Search feature on the Employee Home Page, a user can either check the “Show All” checkboxes for both a Farmer and the Product Type and then click on the “SET” button underneath the calendar for the All results to be displayed. 
Alternatively, a user can Filter a user’s search results by checking or unchecking the “Show All” checkboxes for either Farmer ID or Product Type, selecting a Farmer’s ID from the dropdown list of existing Farmers, and/or a specific Product Type from the dropdown list of existing Product Types. After that, a user must specify the Date using the calendar provided and the clicking on the “SET” button afterward, to display the filtered results.
Once the user is done, the user can click on the “LOGOUT” button to exit the program and be redirected to the Login Page.




———————————————————————————