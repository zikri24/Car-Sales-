using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//...
using CarSales.Entity;
using CarSales.Data;

namespace CarSales.Biz
{
    public static class AccountManager
    {
        //Check Username 
        public static ResultStatus CheckUsername(string username)
        {
            ResultStatus result = ResultStatus.Success;
            try
            {
                AccountDao dao = new AccountDao();
                Account account = dao.SelectUserByUsername(username);

                if (account!=null)
                {
                    result = ResultStatus.UsernameExists;
                }          

            }
            catch (Exception)
            {

                result = ResultStatus.Error;
            }
            return result;

        }

        //Register
        public static ResultStatus Register(Account account,Customer customer)
        {
            ResultStatus result = ResultStatus.Success ;

            try
            {
                AccountDao dao = new AccountDao();
                dao.InsertAccount(account, customer);
            }
            catch (Exception)
            {

                result = ResultStatus.Error;
            }
            return result;
        }

        //Login
        public static Result<Account> Login(string username, string passwrod)
        {
            Result<Account> result = new Result<Account>();

            try
            {
                AccountDao dao = new AccountDao();
                result.Data = dao.SelectUserByUsername(username);
                if (result.Data!=null)
                {
                    if (result.Data.Password== passwrod )
                    {
                        result.Status = ResultStatus.Success;
                    }
                    else
                    {
                            result.Status= ResultStatus.WrongPassword;
                    }
                    
                }
                else
	            {
                    result.Status = ResultStatus.WrongUsername;
	            }

            }
            catch (Exception)
            {
                
                result.Status= ResultStatus.Error;
            }
            return result;
        }       
    }
}
