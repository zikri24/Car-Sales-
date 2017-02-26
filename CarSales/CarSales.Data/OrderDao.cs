using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//...
using System.Data.SqlClient;
using System.Data;
using CarSales.Common;
using CarSales.Entity;

namespace CarSales.Data
{
    //Insert Order
    public class OrderDao
    {
        //Insert Order
        public void InsertOrder(Order order, OrderDetails orderDetails)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();

            conn.Open();
            SqlTransaction trans = conn.BeginTransaction();
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Orders_Insert", conn, trans);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //Input Paremeter
                //cmd.Parameters.Add(new SqlParameter("@OrderNo", order.OrderNo));
                cmd.Parameters.Add(new SqlParameter("@AccountID", order.AccountID));
                cmd.Parameters.Add(new SqlParameter("@DateTime", order.DateTime));
                cmd.Parameters.Add(new SqlParameter("@Total", order.Total));
                cmd.Parameters.Add(new SqlParameter("@Status", order.Status));


                //Output Paremeter
                SqlParameter id = new SqlParameter("@OrderNo", System.Data.SqlDbType.Int);
                id.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(id);

                using (conn)
                {
                    cmd.ExecuteNonQuery();
                   orderDetails.OrderNo = Convert.ToInt32(id.Value);

                    //Insert Order Details
                    cmd = new SqlCommand("sp_OrderDetails_Insert", conn, trans);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    //Input Paremeters
                 
                    cmd.Parameters.Add(new SqlParameter("@OrderNo", orderDetails.OrderNo));
                    cmd.Parameters.Add(new SqlParameter("@CarID", orderDetails.CarID));
                    cmd.Parameters.Add(new SqlParameter("@Price", orderDetails.Price));

                    cmd.ExecuteNonQuery();
                    trans.Commit();
                }
            }
            catch (Exception)
            {

                trans.Rollback();
            }
        }

        //Select All Orders

        public List<Order> GetAllOrders()
        {
            List<Order> list = new List<Order>();

            //#1 create connection
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();

            //#2 create command
            SqlCommand cmd = new SqlCommand("sp_Orders_SelectAllOrders", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            

            //#3 run command
            using (conn)
            {
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                //#4 handel the results
                while (reader.Read())
                {
                    Order order = new Order();
                    
                    order.AccountID= Convert.ToInt32(reader["AccountID"]);
                    order.OrderNo = Convert.ToInt32 (reader["OrderNo"]);
                    order.DateTime= (DateTime)reader["DateTime"];
                    order.Status = reader["Status"].ToString();
                    
                    list.Add(order);
                }
            }
            return list;
        }
    }
}
