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
    public partial class UpdateYourCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int accountID = ((Account)Session["LoggedAccount"]).AccountID;

                Result<Car> result = CarManager.SelectCarByAccountID(accountID);
                if (result.Status == ResultStatus.Success)
                {
                    Car car = result.Data;
                    //show
                    
                    txtMake.Text = car.Make;
                    txtModel.Text = car.Model;
                    txtYear.Text = car.Year;
                    txtColor.Text = car.Color;
                    txtKillometers.Text = car.Killometers;                                        
                    txtPrice.Text = car.Price.ToString();
                    ddlType.DataSource = Enum.GetValues(typeof(BodyType));
                    ddlType.DataBind();
                    ddlCondition.DataSource = Enum.GetValues(typeof(Condition));
                    ddlCondition.DataBind();
                    ddlTransmission.DataSource = Enum.GetValues(typeof(Transmission));
                    ddlTransmission.DataBind();
                    int carID = car.CarID;
                    Session.Add("CarID",carID);
                }
                else
                {
                    lblInfo.Text = "Error: cannot find Car";
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            Car car = new Car();
            car.CarID = (int)Session["CarID"];
            car.Make=txtMake.Text;
            car.Model=txtModel.Text ;
            car.Year=txtYear.Text ;
            car.Color= txtColor.Text ;
            car.Killometers=txtKillometers.Text ;
            car.Price=Convert.ToDouble( txtPrice.Text);           
            car.Type = ddlType.SelectedItem.ToString();
            car.Transmission= ddlTransmission.SelectedItem.ToString();
            car.Condition = ddlCondition.SelectedItem.ToString();

            if (CarManager.UpdateCar(car) == ResultStatus.Success)
            {
                lblInfo.Text = "Your Car Hase been Updated Successfully";
            }
            else
            {
                lblInfo.Text = "Error";
            }
        }

       
    }
}