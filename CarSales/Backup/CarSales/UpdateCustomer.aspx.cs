using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//.....
using CarSales.Entity;
using CarSales.Biz;


namespace CarSales
{
    public partial class UpdateCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int customerID = ((Account)Session["LoggedAccount"]).AccountID;

                Result<Customer> result = CustomerManager.GetCustomerByID(customerID);
                if (result.Status == ResultStatus.Success)
                {
                    //show
                    Customer customer = result.Data;
                    //lblID.Text = customer.AccountID.ToString();
                    txtFirstName.Text = customer.FirstName;
                    txtLastName.Text = customer.LastName;
                    txtAddress.Text = customer.Address;
                    txtCity.Text = customer.City;
                    txtPostCode.Text = customer.Postcode;
                    txtPhone.Text = customer.Phone;
                    txtState.Text = customer.State;
                    txtPhone.Text = customer.Phone;
                    txtEmail.Text = customer.Email;


                }
                else
                {
                    lblInfo.Text = "Error: cannot find customer";
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;
            string city = txtCity.Text;
            string postcode = txtPostCode.Text;
            string state = txtState.Text;
            string phone = txtPhone.Text;

            Customer customer = new Customer();
            customer.AccountID = ((Account)Session["LoggedAccount"]).AccountID;
            customer.FirstName = firstName;
            customer.LastName = lastName;
            customer.Email = email;
            customer.Address = address;
            customer.City = city;
            customer.Postcode = postcode;
            customer.State = state;
            customer.Phone = phone;
            if (CustomerManager.UpdateProfile(customer) == ResultStatus.Success)
            {
                lblInfo.Text = "Your Profile Hase been Updated Successfully";
            }
            else
            {
                lblInfo.Text = "Error";
            }

        }
    }
}