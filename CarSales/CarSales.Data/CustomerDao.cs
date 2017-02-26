using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using CarSales.Entity;
using CarSales.Common;

using System.Data.SqlClient;

namespace CarSales.Data
{
     public class CustomerDao
    {
         //Select Customer By ID
         public Customer SelectCustomerByID(int accountID)
         {
             Customer customer = new Customer();
             SqlConnection conn = new SqlConnection();
             conn.ConnectionString = ConfigHelper.GetConnectionString();
             conn.Open();

             SqlCommand cmd = new SqlCommand("sp_Customer_SelectCustomerByID", conn);
             cmd.CommandType = System.Data.CommandType.StoredProcedure;
             cmd.Parameters.Add(new SqlParameter("@accountID", accountID));

             using (conn)
             { 
                 SqlDataReader reader = cmd.ExecuteReader();

                 while (reader.Read ())
                 {
                     customer.AccountID = (int)reader["accountID"];
                     customer.FirstName = reader["FirstName"].ToString();
                     customer.LastName = reader["LastName"].ToString();
                     customer.Email = reader["Email"].ToString();
                     customer.Address = reader["Address"].ToString();
                     customer.City = reader["City"].ToString();
                     customer.State = reader["State"].ToString();
                     customer.Postcode = reader["Postcode"].ToString();
                     customer.Phone = reader["Phone"].ToString();
                 }
             }
             return customer;
         }

         //Select Customer By CarID
         public Int32 SelectCustomerByCarID(int carID)
         {
             
             Car car = new Car();
             SqlConnection conn = new SqlConnection();
             conn.ConnectionString = ConfigHelper.GetConnectionString();
             conn.Open();

             SqlCommand cmd = new SqlCommand("sp_Car_SelectAccountIdByCarID", conn);
             cmd.CommandType = System.Data.CommandType.StoredProcedure;
             cmd.Parameters.Add(new SqlParameter("@CarID", carID));

             using (conn)
             {
                 SqlDataReader reader = cmd.ExecuteReader();
                 
                 while (reader.Read())
                 {
                     car.AccountID = (int)reader["accountID"];
                 }
             }
             return car.AccountID;
         }

         //Update Customer
         public void Update(Customer customer)
         {
             SqlConnection conn = new SqlConnection();
             conn.ConnectionString = ConfigHelper.GetConnectionString();
             conn.Open();

             SqlCommand cmd = new SqlCommand("sp_Customers_Update", conn);
             cmd.CommandType = System.Data.CommandType.StoredProcedure;
             cmd.Parameters.Add(new SqlParameter("@accountID", customer.AccountID));
             cmd.Parameters.Add(new SqlParameter("@firstName",customer.FirstName));
             cmd.Parameters.Add(new SqlParameter("@lastName", customer.LastName));
             cmd.Parameters.Add(new SqlParameter("@email",customer.Email));
             cmd.Parameters.Add(new SqlParameter("@address", customer.Address));
             cmd.Parameters.Add(new SqlParameter("@city",customer.City));
             cmd.Parameters.Add(new SqlParameter("@state", customer.State));
             cmd.Parameters.Add(new SqlParameter("@postcode", customer.Postcode));
             cmd.Parameters.Add(new SqlParameter("@phone", customer.Phone));

             using (conn)
             {
                 cmd.ExecuteNonQuery();
             }
         }

         //Get All Customers
         public List<Customer> GetAllCustomers()
         {
             List<Customer> list = new List<Customer>();
             SqlConnection conn = new SqlConnection();
             conn.ConnectionString = ConfigHelper.GetConnectionString();
             conn.Open();

             SqlCommand cmd = new SqlCommand("sp_Customers_SelectAllCustomers", conn);
             cmd.CommandType = System.Data.CommandType.StoredProcedure;

             using (conn)
             {
                 SqlDataReader reader = cmd.ExecuteReader();

                 while (reader.Read())
                 {
                     Customer customer = new Customer();
                     customer.AccountID = (int)reader["accountID"];
                     customer.FirstName = reader["FirstName"].ToString();
                     customer.LastName = reader["LastName"].ToString();
                     customer.Email = reader["Email"].ToString();
                     customer.Address = reader["Address"].ToString();
                     customer.City = reader["City"].ToString();
                     customer.State = reader["State"].ToString();
                     customer.Postcode = reader["Postcode"].ToString();
                     customer.Phone = reader["Phone"].ToString();

                     list.Add(customer);
                 }
             }
             return list;
         }
    }
}
