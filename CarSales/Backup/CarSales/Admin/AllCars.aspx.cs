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
    public partial class AllCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Result<List<Car>> result = CarManager.SelectAllCars();
                if (result.Status == ResultStatus.Success)
                {
                    List<Car> cars = result.Data;

                    GrdViewAllCars.DataSource = result.Data;
                    GrdViewAllCars.DataBind();
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}