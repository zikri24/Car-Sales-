using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//...
using CarSales.Entity;
using CarSales.Data;


namespace CarSales.Biz
{

    public  class CarManager
    {
        //Upload Car
        public static Result<Int32> UploadCar(Car car)
        {
            Result<Int32> result = new Result<Int32>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.UploadCar(car);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Update Car
        public static ResultStatus UpdateCar(Car car)
        {
            ResultStatus result = ResultStatus.Success;

            try
            {
                CarDao dao = new CarDao();
                dao.UpdateCar(car);

            }
            catch (Exception)
            {
                result = ResultStatus.Error;
            }
            return result;

        }

        //Search By Make

        public static Result<List<Car>> SearchByMake (string make)
        {
            Result<List<Car>> result = new Result<List<Car>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SearchByMake(make);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Search By Many Criteria

        public static Result<List<Car>> SearchByManyCriteria(string make, string model, string type, double priceMin, double priceMax, string location)
        {
            Result<List<Car>> result = new Result<List<Car>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SearchByManyCriteria(make, model, type, priceMin, priceMax, location);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }


        //Select All Photos By CarID
        public static Result<List<Photo>> SelectAllPhotos(int carID)
        {
            Result<List<Photo>> result = new Result<List<Photo>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SelectAllPhotosByCarrId(carID);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Search By Type
        public static Result<List<Car>> SearchByType(String type)
        {
            Result<List<Car>> result = new Result<List<Car>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SearchByType(type);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Search New Cars
        public static Result<List<Car>> SearchNewCars(String condition)
        {
            Result<List<Car>> result = new Result<List<Car>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SearchNewCars(condition);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Select Car by ID
        public static Result<Car> SelectCarByID(int carID)
        {
            Result<Car> result = new Result<Car>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SelectCarByID(carID);
                result.Status = ResultStatus.Success;
            }
            catch (Exception)
            {
                result.Status = ResultStatus.Error;

            }
            return result;
        }

        //Car Make Data Source
        public static Result<List<string>> MakeDataSource()
        {
            Result<List<string>> result = new Result<List<string>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.MakeDataSource();
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Car Model Data Source
        public static Result<List<string>> ModelDataSource(string make)
        {
            Result<List<string>> result = new Result<List<string>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.ModelDataSource(make);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Body Type Data Source
        public static Result<List<string>> BodyTypeDataSource()
        {
            Result<List<string>> result = new Result<List<string>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.BodyTypeDataSource();
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Select Car By AccountID
        public static Result<Car> SelectCarByAccountID(int accountID)
        {
            Result<Car> result = new Result<Car>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SelectCarByAccountID(accountID);
                result.Status = ResultStatus.Success;

            }
            catch (Exception)
            {

                result.Status = ResultStatus.Error;
            }
            return result;
        }

        //Count All Cars
        public static int CountAllCars()
        {
           int result = 0;
            try
            {
                CarDao dao = new CarDao();
                result = dao.CouuntAllCars();

            }
            catch (Exception)
            {

                throw;
            }
            return result;
        }

        //Count All Users
        public static int CountAllUsers()
        {
            int result = 0;
            try
            {
                CarDao dao = new CarDao();
                result = dao.CouuntAllUsers();

            }
            catch (Exception)
            {

                throw;
            }
            return result;
        }

        //Count All Orders
        public static int CountAllOrders()
        {
            int result = 0;
            try
            {
                CarDao dao = new CarDao();
                result = dao.CouuntAllOrders();

            }
            catch (Exception)
            {

                throw;
            }
            return result;
        }

        //Select All Cars
        public static Result<List<Car>> SelectAllCars()
        {
            Result<List<Car>> result = new Result<List<Car>>();
            try
            {
                CarDao dao = new CarDao();
                result.Data = dao.SelectAllCars();
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
