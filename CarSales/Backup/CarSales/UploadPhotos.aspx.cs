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
    public partial class UploadPhotos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUploadPhotos_Click(object sender, EventArgs e)
        {
            
            Photo p = new Photo();
            int carID = int.Parse(Request.QueryString["CarID"]);

            if (FileUploadPhoto1.HasFile)
            {
                //create folder with the filename
                string folderPath = Server.MapPath("~/Photos/");
                Directory.CreateDirectory(folderPath);

                //upload the selected file
                //read the path 
                string path = Server.MapPath("~/Photos/" + FileUploadPhoto1.FileName);
                //save the selected file into the file system
                FileUploadPhoto1.SaveAs(path);

                //set the LinkToFile


                p.LinkToFile = "~/Photos/" + FileUploadPhoto1.FileName;
                p.CarID = carID;
                ResultStatus result = PhotoManager.InsertPhoto(p);
            }
        
         }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            int carID = int.Parse(Request.QueryString["CarID"]);
            Response.Redirect("~/SeeAdd.aspx?CarID=" + carID);
        }
    }
  }
