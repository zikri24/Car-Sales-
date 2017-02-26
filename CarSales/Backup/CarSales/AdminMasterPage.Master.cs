using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//...
using CarSales.Biz;
using CarSales.Entity;


namespace CarSales
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Account logged = (Account)Session["LoggedAccount"];
                if (Session["LoggedAccount"] != null && logged.Role=="Admin")
                {
                    lblLoggedAccount.Text = "Welcome Admin";
                }
            }
                if (Session["LoggedAccount"] != null)
                {
                    LinkbtnLogin.Text = "Logout";
                    LinkbtnRegister.Text = "";
                }
                else
                {
                    LinkbtnLogin.Text = "Login";
                    LinkbtnRegister.Text = "Register";
                    LinkbtnEditProfile.Text = "";
                }
            
        }

        protected void LinkbtnLogin_Click(object sender, EventArgs e)
        {
           
                Session["LoggedAccount"] = null;
                Response.Redirect("~/Login.aspx");
            
        }

        protected void LinkbtnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

        protected void LinkbtnEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateCustomer.aspx");
        }
    }
}