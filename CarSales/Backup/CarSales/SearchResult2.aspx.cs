using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//....
using CarSales.Entity;
using CarSales.Biz;

namespace CarSales
{
    public partial class SearchResult1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Search 
            string make = Request.QueryString["make"];
            string model = Request.QueryString["model"];
            string type = Request.QueryString["type"];
            double priceMin = double.Parse(Request.QueryString["priceMin"]);
            double priceMax = double.Parse(Request.QueryString["priceMax"].ToString());
            string location = Request.QueryString["location"];
            try
            {
                Result<List<Car>> result = CarManager.SearchByManyCriteria(make, model, type, priceMin, priceMax, location);
                if (result.Status == ResultStatus.Success)
                {
                    List<Car> car = result.Data;
                    if (result.Data != null)
                    {
                        GridViewResult.DataSource = result.Data;
                        GridViewResult.DataBind();
                    }

                }

            }
            catch (Exception)
            {

                // lblInfo.Text = "ERROR";
            }

        }
        protected void GridViewResult_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //#1 set the "CommandName" property = ButtonID
            //#2 set the "CommandArgument" property = Expr: CommandArgument="<%#((GridViewRow) Container).RowIndex %>"
           
            if (e.CommandName == "view")
            {
                //read the productNo
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridViewResult.Rows[index];

                //code...
                //if you Eval the carID ...
                //string no = ((Label)row.FindControl("lblCarID")).Text;
                //if you donot Eval the carID put it in the DataKeyNames
                int carID = (int)GridViewResult.DataKeys[row.RowIndex].Values[0];
                Session.Add("CarID", carID);
                Response.Redirect("~/CarDetails.aspx");
            }
          
        }
    

        protected void GridViewResult_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string make = Request.QueryString["make"];

            GridViewResult.PageIndex = e.NewPageIndex;

            Result<List<Car>> result = CarManager.SearchByMake(make);

            switch (result.Status)
            {
                case ResultStatus.Success:
                    GridViewResult.DataSource = result.Data;
                    GridViewResult.DataBind();
                    break;
                case ResultStatus.Error:
                    lblInfo.Text = "error";
                    break;
            }
        }

        
    }
}