using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//...
using CarSales.Entity;
using CarSales.Data;

namespace CarSales.Biz
{
    public class CustomerManager
    {
        //Select Customer By ID to Update
        public static Result<Customer> GetCustomerByID(int customerID)
        {
            Result<Customer> result = new Result<Customer>();
            try
            {
              CustomerDao dao = new CustomerDao();
              result.Data  =dao.SelectCustomerByID(customerID);
              result.Status = ResultStatus.Success;
            }
            catch (Exception)
            {
                result.Status = ResultStatus.Error;

            }
            return result;
        }

        //Update Customer
        public static ResultStatus UpdateProfile(Customer customer)
        {
            ResultStatus result = ResultStatus.Success;

            try
            {
                CustomerDao dao = new CustomerDao();
                dao.Update(customer);
                
            }
            catch (Exception)
            {
                result= ResultStatus.Error;
            }
            return result;
            
        }

        //Select Customer By ID to Update
        public static Result<Int32> GetCustomerByCarID(int carID)
        {
            Result<Int32> id = new Result<Int32>();
            try
            {
                CustomerDao dao = new CustomerDao();
                id.Data = dao.SelectCustomerByCarID(carID);
                id.Data = (int)ResultStatus.Success;
            }
            catch (Exception)
            {
                id.Status = ResultStatus.Error;

            }
            return id;
        }

        //Get All Customer
        public static Result<List<Customer>> GetAllCustomers()
        {
            Result<List<Customer>> result = new Result<List<Customer>>();
            try
            {
                CustomerDao dao = new CustomerDao();
                result.Data = dao.GetAllCustomers();
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
