using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//...
using CarSales.Entity;
using CarSales.Biz;
using System.IO;

namespace CarSales.User
{
    public partial class UploadCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            
                Account logged = (Account)Session["LoggedAccount"];

                if (logged == null)
                {
                    string url = "UploadCar.aspx";
                    Response.Redirect("~/Login.aspx?url="+url);
                }
                else
                {

                 ddlType.DataSource = Enum.GetValues(typeof(BodyType));
                 ddlType.DataBind();
           
                ddlCondition.DataSource = Enum.GetValues(typeof(Condition));
                ddlCondition.DataBind();

                ddlTransmission.DataSource = Enum.GetValues(typeof(Transmission));
                ddlTransmission.DataBind();
                }
          }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Account logged = (Account)Session["LoggedAccount"];
            int accountID = logged.AccountID;
            try
            {
                string type = ddlType.SelectedItem.ToString();
                string make = txtMake.Text;
                string model = txtModel.Text;
                string year = txtYear.Text;
                string color = txtColor.Text;
                string killometers = txtKillometers.Text;
                string transmission = ddlTransmission.SelectedItem.ToString();
                string condition = ddlCondition.SelectedItem.ToString();
                double price = double.Parse(txtPrice.Text);
                string location = txtLocation.Text;


                Car car = new Car();
          
                
                car.Type = type;
                car.Make = make;
                car.Model = model;
                car.Year = year;
                car.Color = color;
                car.Killometers = killometers;
                car.Transmission = transmission;
                car.Condition = condition;
                car.Price = price;
                car.Location = location;
                car.AccountID = accountID;



                if (FileUpload1.HasFile)
                {
                    //create folder with the filename
                    string folderPath = Server.MapPath("~/Photos/");
                    Directory.CreateDirectory(folderPath);

                    //upload the selected file
                    //read the path 
                    string path = Server.MapPath("~/Photos/" + FileUpload1.FileName);
                    //save the selected file into the file system
                    FileUpload1.SaveAs(path);

                    //set the LinkToFile
                    car.LinkToFile = "~/Photos/" + FileUpload1.FileName;

                }
                Result<Int32> result = CarManager.UploadCar(car);


                if (result.Status == ResultStatus.Success)
                {
                    lblInfo.Text = "Your Car has been Uploaded Successfully";
                    Session["CarID"] = result.Data;
                    int carID = result.Data;
                }
               
            }
            catch (Exception)
            {

                lblInfo.Text = "ERROR";
            }
        }

        protected void btnAddMore_Click(object sender, EventArgs e)
        {
            int carID = (int)Session["CarID"];

            Response.Redirect("~/UploadPhotos.aspx?CarID=" + carID);
        }

       
    }
}