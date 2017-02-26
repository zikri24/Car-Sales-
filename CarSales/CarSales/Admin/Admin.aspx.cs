using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//....
using CarSales.Entity;
using CarSales.Biz;


namespace CarSales.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int result = CarManager.CountAllCars();           
            lblCarsCount.Text =result.ToString();

            int result1 = CarManager.CountAllUsers();
            lblUsersCount.Text = result1.ToString();

            int result2 = CarManager.CountAllOrders();
            lblOrderHistory.Text = result2.ToString();
            
        }

        protected void btnOrderHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AllOrders.aspx");
        }

        protected void btnAllUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AllUsers.aspx");
        }

        protected void btnAllCars_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AllCars.aspx");
        }

       

        
    }
}