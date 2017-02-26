using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using CarSales.Entity;
using CarSales.Common;
using System.Data.SqlClient;

namespace CarSales.Data
{
    public class AccountDao
    {
        //Login
        public Account SelectUserByUsername(string username)
        {
            Account account = null;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();
            conn.Open();

            SqlCommand cmd = new SqlCommand("sp_Accounts_SelectAccountByUsername", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@username", username));
            using (conn)
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    account = new Account();
                    account.AccountID = (int)reader["AccountID"];
                    account.Username = reader["Username"].ToString();
                    account.Password = reader["Password"].ToString();
                    account.Role = reader["Role"].ToString();
                    
                }
            }
            return account;
        }

        //Register
        public void InsertAccount(Account account, Customer customer)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();

            conn.Open();
            SqlTransaction trans = conn.BeginTransaction();
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Account_Insert", conn, trans);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //Input Paremeter
                cmd.Parameters.Add(new SqlParameter("@username", account.Username));
                cmd.Parameters.Add(new SqlParameter("@password", account.Password));
                cmd.Parameters.Add(new SqlParameter("@role", account.Role));
                cmd.Parameters.Add(new SqlParameter("@dateCreated", account.DateCreated));
                cmd.Parameters.Add(new SqlParameter("@isActive", account.IsActive));



                //Output Paremeter
                SqlParameter id = new SqlParameter("@accountID", System.Data.SqlDbType.Int);
                id.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(id);
               
                using (conn)
                {
                     cmd.ExecuteNonQuery();
                    account.AccountID = Convert.ToInt32(id.Value);

                    //Insert customer
                    cmd = new SqlCommand("sp_Customers_Insert", conn, trans);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    //Input Paremeters
                    cmd.Parameters.Add(new SqlParameter("@accountID", account.AccountID));
                    cmd.Parameters.Add(new SqlParameter("@email", account.Email));

                    cmd.ExecuteNonQuery();
                    trans.Commit();
                }
            }
            catch (Exception)
            {

                trans.Rollback();
            }
        }

    }
}
