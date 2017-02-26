using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//...
using CarSales.Biz;
using CarSales.Entity;

namespace CarSales.Admin
{
    public partial class AllOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Result<List<Order>> result = OrderManager.GetAllOrders();
                if (result.Status == ResultStatus.Success)
                {
                    List<Order> car = result.Data;

                    GridView1.DataSource = result.Data;
                    GridView1.DataBind();
                }

            }
            catch (Exception)
            {

                lblInfo.Text = "ERROR";
            }

        }
    }
}