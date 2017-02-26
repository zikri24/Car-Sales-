using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//....
using CarSales.Biz;
using CarSales.Entity;

namespace CarSales
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string email = txtEmail.Text;

            Account account = new Account();
            account.Username = username;
            account.Password = password;
            account.Email = email;
            account.Role = "User";
            account.DateCreated = DateTime.Now;
            account.IsActive = true;

            Customer user = new Customer();
            ResultStatus checkUsername = AccountManager.CheckUsername(username);
            switch (checkUsername)
            {
                case ResultStatus.Success:
                    ResultStatus result = AccountManager.Register(account, user);

                    switch (result)
                    {
                        case ResultStatus.Success:
                            lblInfo.Text = "Success";
                            Response.Redirect("~/Login.aspx");
                            break;
                        case ResultStatus.Error:
                            lblInfo.Text = "ERROR";
                            break;
                    }
                    break;
                case ResultStatus.UsernameExists:
                    lblInfo.Text = "Username Not Available";
                    break;

            }
        }
    }
}