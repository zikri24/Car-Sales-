using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//.....
using CarSales.Entity;
using CarSales.Biz;


namespace CarSales.User
{
    public partial class SellerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           int accountID =Convert.ToInt32( Request.QueryString["accountID"]);

            Result<Customer> result = CustomerManager.GetCustomerByID(accountID);
            if (result.Status == ResultStatus.Success)
            {
                //show
                Customer customer = result.Data;
                lblName.Text = customer.FirstName + " " + customer.LastName;
                lblPhone.Text = customer.Phone;
                lblEmail.Text = customer.Email;
                lblAddress.Text = customer.Address +"\n" + customer.City + ", " + customer.State + ", " + customer.Postcode;
               
            }
        }
    }
}