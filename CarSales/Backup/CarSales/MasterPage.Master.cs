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
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Account logged = (Account)Session["LoggedAccount"];
                if (Session["LoggedAccount"] != null)
                {
                    lblLoggedAccount.Text = "Welcome " + logged.Username;
                    lnkBtnLogin.Text = "Logout";
                    lnkBtnRegister.Text = "";
                }
                else
                {                    
                    lnkBtnLogin.Text = "Login";
                    lnkBtnRegister.Text = "Register";
                    LinkbtnEditProfile.Text = "";
                }


                if (logged != null && logged.Role == "Admin")
                {
                    SiteMapDataSource1.SiteMapProvider = "Admin";
                }
                else
                {
                    SiteMapDataSource1.SiteMapProvider = "User";
                }
                
            } 
        }

        protected void lnkBtnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

        protected void LinkbtnEditProfile_Click(object sender, EventArgs e)
        {
            Account logged = (Account)Session["LoggedAccount"];
            int accountID = logged.AccountID;
            Response.Redirect("~/UpdateCustomer.aspx");
        }

        protected void lnkBtnLogin_Click(object sender, EventArgs e)
        {                           
                Response.Redirect("~/Login.aspx");
        }

       
    }
}