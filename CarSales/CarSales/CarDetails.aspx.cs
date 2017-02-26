using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//....
using CarSales.Entity;
using CarSales.Biz;


namespace CarSales.User
{
    
    public partial class CarDetails1 : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Account logged = (Account)Session["LoggedAccount"];
                int carID;
                if (logged == null)
                {
                 
                    string url = "CarDetails.aspx";
                    Response.Redirect("~/Login.aspx?url=" + url);
                    
                }
                else
                {
                        //Select Photos By CarID
                        carID = (int)Session["CarID"];
                        //int carID = int.Parse(Request.QueryString["CarID"]);
                    
                    try
                    {
                        Result<List<Photo>> result = CarManager.SelectAllPhotos(carID);
                        if (result.Status == ResultStatus.Success)
                        {
                            List<Photo> car = result.Data;
                            if (result.Data != null)
                            {
                                Repeater1.DataSource = result.Data;
                                Repeater1.DataBind();
                            }
                        }

                        Result<Car> result2 = CarManager.SelectCarByID(carID);
                        if (result2.Status == ResultStatus.Success)
                        {
                            Car car = result2.Data;
                            car.AccountID = 0;
                            if (result2.Data != null)
                            {
                                lblMake.Text = car.Make;
                                lblModel.Text = car.Model;
                                lblColor.Text = car.Color;
                                lblType.Text = car.Type;
                                lblTransmission.Text = car.Transmission;
                                lblKilometers.Text = car.Killometers;
                                lblPrice.Text = Convert.ToDouble(car.Price).ToString();

                            }
                        }
                    }
                    catch (Exception)
                    {

                        lblInfo.Text = "ERROR";
                    }
                  
                }
            }
        }
        protected void btnOrder_Click(object sender, EventArgs e)
        {
            int carID = (int)Session["CarID"];
            //int carID = int.Parse(Request.QueryString["CarID"]);
            Account logged = (Account)Session["LoggedAccount"];
            int accountID = logged.AccountID;
            Car car = new Car();
            Result<Car> result2 = CarManager.SelectCarByID(carID);
            if (result2.Status == ResultStatus.Success)
            {
                car = result2.Data;
               
            }
            
            Order order = new Order ();
            
            order.DateTime =DateTime.Now;
            order.AccountID = accountID;
            order.Total=car.Price;
            order.Status = "Successful";


            OrderDetails orderDetails = new OrderDetails();
            orderDetails.CarID = carID;
            orderDetails.Price = car.Price;


             ResultStatus result = OrderManager.InsertOrder(order, orderDetails);

                switch (result)
                 {
                   case ResultStatus.Success:
                      lblInfo.Text = "Your Order is Successfully done";
                            
                    break;
                   case ResultStatus.Error:
                     lblInfo.Text = "ERROR";
                    break;
                 }
        }

        protected void btnContactSeller_Click(object sender, EventArgs e)
        {
            int carID = (int)Session["CarID"];
            //int carID = int.Parse(Request.QueryString["CarID"]);
            Result<Car> result2 = CarManager.SelectCarByID(carID);
            int accountID = 0;
            if (result2.Status == ResultStatus.Success)
            {
                Car car = result2.Data;

                accountID = car.AccountID;

            }
            Response.Redirect("~/SellerDetails.aspx?accountID=" + accountID);
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}