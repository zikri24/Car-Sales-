using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//...
using CarSales.Entity;
using CarSales.Biz;
namespace CarSales
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Search By Make
                Result<List<string>> result = CarManager.MakeDataSource();
                if (result.Status == ResultStatus.Success)
                {

                    DropDownListMake.DataSource = result.Data;
                    DropDownListMake.DataBind();
                    DropDownListMake.Items.Add("Select Make...");
                    DropDownListMake.SelectedIndex = DropDownListMake.Items.Count - 1;

                }

                Result<List<string>> result2 = CarManager.BodyTypeDataSource();
                if (result2.Status == ResultStatus.Success)

                    RdbtnType.DataSource = result2.Data;
                RdbtnType.DataBind();
            }
        }

       

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string make = DropDownListMake.SelectedItem.ToString();

            if (make == "Select Make...")
            {
                make = null;
            }

            string model = null;
            if (ddlModel.SelectedItem != null)
            {
                model = ddlModel.SelectedItem.ToString();
            }
            if (model == "Select Model...")
            {
                model = null;
            }

            string type = null;
            if (RdbtnType.SelectedItem != null)
            {
                type = RdbtnType.SelectedItem.Value;
            }
            double priceMin = 0;
            if (ddlMinPrice.Text=="------------")
            {
                 priceMin = 0;
            }
            else if (ddlMinPrice.Text.Trim() != "")
            {
                priceMin = double.Parse(ddlMinPrice.Text);
            }

            double priceMax = 1000000;
            
            if (ddlMaxPrice.Text == "------------")
            {
                priceMax = 1000000;
            }
            else if (ddlMaxPrice.Text.Trim() != "")
            {
                priceMax = double.Parse(ddlMaxPrice.Text);
            }

            string location = txtLocation.Text;

            Response.Redirect("~/SearchResult2.aspx?make=" + make + "&model=" + model + "&type=" + type + "&priceMin=" + priceMin + "&priceMax=" + priceMax + "&location=" + location);
        }
        protected void DropDownListMake_SelectedIndexChanged(object sender, EventArgs e)
        {
            string make = DropDownListMake.SelectedItem.ToString();
            Result<List<string>> result = CarManager.ModelDataSource(make);
            if (result.Status == ResultStatus.Success)
            {
                ddlModel.DataSource = result.Data;
                ddlModel.DataBind();
                ddlModel.Items.Add("Select Model...");
                ddlModel.SelectedIndex = ddlModel.Items.Count - 1;
            }
        }
    }
}