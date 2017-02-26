using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CarSales.Biz;
using CarSales.Entity;

namespace CarSales
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            Result<Account> result = AccountManager.Login(username, password);

            switch (result.Status)
            {
                case ResultStatus.Success:
                    Account LoggedAccount = result.Data;
                    Session["LoggedAccount"] = LoggedAccount;
                    if (LoggedAccount.Role == "Admin")
                    {
                        Response.Redirect("~/Admin/Admin.aspx");

                    }
                    else
                    {
                        Session.Add("name", LoggedAccount.Username);
                        string url = Request.QueryString["url"];
                        if (url!=null)
                        {
                            
                            Response.Redirect(url);
                        }
                        else
                        {
                            Response.Redirect("~/Home.aspx");
                        }
                        
                    }

                    break;
                case ResultStatus.Error:
                    lblInfo.Text = "ERROR";
                    break;
                case ResultStatus.WrongUsername:
                    lblInfo.Text = "WrongUsername";

                    break;
                case ResultStatus.WrongPassword:
                    lblInfo.Text = "WrongPassword";

                    break;
            }
            
        }

        protected void LinkbtnNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }
    }
}