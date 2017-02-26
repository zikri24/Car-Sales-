using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//...
using CarSales.Entity;
using CarSales.Data;


namespace CarSales.Biz
{
     public static class OrderManager
    {

        //Insert Order
         public static ResultStatus InsertOrder(Order order, OrderDetails orderDetails)
         {
             ResultStatus result = ResultStatus.Success;

             try
             {
                 OrderDao dao = new OrderDao();
                 dao.InsertOrder(order, orderDetails);
             }
             catch (Exception)
             {

                 result = ResultStatus.Error;
             }
             return result;
         }

         //Get All the Orders
         public static Result<List<Order>> GetAllOrders()
         {
             Result<List<Order>> result = new Result<List<Order>>();
             try
             {
                 OrderDao dao = new OrderDao();
                 result.Data = dao.GetAllOrders();
                 result.Status = ResultStatus.Success;

             }
             catch (Exception)
             {

                 result.Status = ResultStatus.Error;
             }
             return result;
         }
    }
}
