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
    public class CarDao
    {
        //Upload Car
        public int UploadCar(Car car)
        {
            int carId = 0;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();
            conn.Open();

            SqlCommand cmd = new SqlCommand("sp_Cars_Insert", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@Type", car.Type));
            cmd.Parameters.Add(new SqlParameter("@Make", car.Make));
            cmd.Parameters.Add(new SqlParameter("@Model", car.Model));
            cmd.Parameters.Add(new SqlParameter("@Year", car.Year));
            cmd.Parameters.Add(new SqlParameter("@Color", car.Color));
            cmd.Parameters.Add(new SqlParameter("@killometers", car.Killometers));
            cmd.Parameters.Add(new SqlParameter("@Transmission", car.Transmission));
            cmd.Parameters.Add(new SqlParameter("@Condition", car.Condition));
            cmd.Parameters.Add(new SqlParameter("@price", car.Price));
            cmd.Parameters.Add(new SqlParameter("@location", car.Location));
            cmd.Parameters.Add(new SqlParameter("@linkToFile", car.LinkToFile));
            cmd.Parameters.Add(new SqlParameter("@accountID", car.AccountID));

            //..
            SqlParameter id = new SqlParameter("@carID", SqlDbType.Int);
            id.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(id);

            using (conn)
            {
                cmd.ExecuteNonQuery();
                carId = Convert.ToInt32(id.Value);
            }
            return carId;
        }

        //Update Car
        public void UpdateCar(Car car)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();
            conn.Open();

            SqlCommand cmd = new SqlCommand("sp_Cars_UpdateCar", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@carID", car.CarID));
            cmd.Parameters.Add(new SqlParameter("@type", car.Type));
            cmd.Parameters.Add(new SqlParameter("@make", car.Make));
            cmd.Parameters.Add(new SqlParameter("@model", car.Model));
            cmd.Parameters.Add(new SqlParameter("@year", car.Year));
            cmd.Parameters.Add(new SqlParameter("@color", car.Color));
            cmd.Parameters.Add(new SqlParameter("@killometers", car.Killometers));
            cmd.Parameters.Add(new SqlParameter("@transmission", car.Transmission));
            cmd.Parameters.Add(new SqlParameter("@condition",car.Condition));
            cmd.Parameters.Add(new SqlParameter("@price", car.Price));
            using (conn)
            {
                cmd.ExecuteNonQuery();
            }
        }

        //Search By Make
        public List<Car> SearchByMake(string make)
        {
            List<Car> list = new List<Car>();

            //#1 create connection
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();

            //#2 create command
            SqlCommand cmd = new SqlCommand("sp_Cars_SearchByMake", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@make",make));

            //#3 run command
            using(conn)
            {
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                //#4 handel the results
                while (reader.Read())
                {
                    Car car = new Car();
                    car.CarID = Convert.ToInt32 (reader["CarID"]);
                    car.Type = reader["Type"].ToString();
                    car.Make = reader["Make"].ToString();
                    car.Model = reader["Model"].ToString();
                    car.Color = reader["Color"].ToString();
                    car.Killometers = reader["Killometers"].ToString();
                    car.Location = reader["Location"].ToString();
                    car.Price = Convert.ToDouble(reader["Price"]);
                    car.Transmission = reader["Transmission"].ToString();
                    car.Condition = reader["Condition"].ToString();
                    car.Year = reader["Year"].ToString();
                    car.LinkToFile = reader["LinkToFile"].ToString();

                    list.Add(car);
                }
            }
            return list;
        }
        
        //Search By Type
       public List<Car> SearchByType(string type)
       {
           List<Car> list = new List<Car>();

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_SearchByType", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@type", type));

           //#3 run command
           using (conn)
           {
               conn.Open();
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   Car car = new Car();
                   car.CarID = Convert.ToInt32(reader["CarID"]);
                   car.Type = reader["Type"].ToString();
                   car.Make = reader["Make"].ToString();
                   car.Model = reader["Model"].ToString();
                   car.Color = reader["Color"].ToString();
                   car.Killometers = reader["Killometers"].ToString();
                   car.Location = reader["Location"].ToString();
                   car.Price = Convert.ToDouble(reader["Price"]);
                   car.Transmission = reader["Transmission"].ToString();
                   car.Condition = reader["Condition"].ToString();
                   car.Year = reader["Year"].ToString();
                   list.Add(car);
               }
           }
           return list;
       }

        //Search The New Cars
       public List<Car> SearchNewCars(string condition)
       {
           List<Car> list = new List<Car>();

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_SelectNewCars", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@condition", condition));

           //#3 run command
           using (conn)
           {
               conn.Open();
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   Car car = new Car();
                   car.CarID = Convert.ToInt32(reader["CarID"]);
                   car.Type = reader["Type"].ToString();
                   car.Make = reader["Make"].ToString();
                   car.Model = reader["Model"].ToString();
                   car.Color = reader["Color"].ToString();
                   car.Killometers = reader["Killometers"].ToString();
                   car.Location = reader["Location"].ToString();
                   car.Price = Convert.ToDouble(reader["Price"]);
                   car.Transmission = reader["Transmission"].ToString();
                   car.Condition = reader["Condition"].ToString();
                   car.Year = reader["Year"].ToString();
                   car.LinkToFile = reader["LinkToFile"].ToString();
                   list.Add(car);
               }
           }
           return list;
       }

        //Select Car By CarID
       public Car SelectCarByID(int CarID)
       {
           Car car = new Car();
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();
           conn.Open();

           SqlCommand cmd = new SqlCommand("sp_Cars_SelectCarByID", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@carID", CarID));

           using (conn)
           {
               SqlDataReader reader = cmd.ExecuteReader();

               while (reader.Read())
               {
                  
                   car.CarID = (int)reader["CarID"];
                   car.Type = reader["Type"].ToString();
                   car.Make = reader["Make"].ToString();
                   car.Model = reader["Model"].ToString();
                   car.Color = reader["Color"].ToString();
                   car.Killometers = reader["Killometers"].ToString();
                   car.Location = reader["Location"].ToString();
                   car.Price = Convert.ToDouble(reader["Price"]);
                   car.Transmission = reader["Transmission"].ToString();
                   car.Condition = reader["Condition"].ToString();
                   car.Year = reader["Year"].ToString();
                   car.LinkToFile = reader["LinkToFile"].ToString();
                   car.AccountID = Convert.ToInt32(reader["AccountID"].ToString());

                   
               }

           }
           return car;
       }

        //Car Make Data Source
       public List<string> MakeDataSource()
       {
           List<string> list = new List<string>();

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_Make", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           

           //#3 run command
           using (conn)
           {
               conn.Open();
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   

                   string make = reader["Make"].ToString();
                   
                   list.Add(make);
               }
           }
           return list;
       }

        //Model Data Source
       public List<string> ModelDataSource(string make)
       {
           List<string> list = new List<string>();

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_ModelDataSource", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@Make", make));

           //#3 run command
           using (conn)
           {
               conn.Open();
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   string model = reader["Model"].ToString();

                   list.Add(model);
               }
           }
           return list;
       }

        //Body Type Data Source
       public List<string> BodyTypeDataSource()
       {
           List<string> list = new List<string>();

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_BodyTypeDataSource", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;


           //#3 run command
           using (conn)
           {
               conn.Open();
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {


                   string bodyType = reader["Type"].ToString();

                   list.Add(bodyType);
               }
           }
           return list;
       }

        //Select All Photos By CarID
       public List<Photo> SelectAllPhotosByCarrId(int carID)
       {
           List<Photo> list = new List<Photo>();

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //find photos
           SqlCommand cmd = new SqlCommand("sp_Links_SelectByCarID", conn);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@carID", carID));
           using (conn)
           {
               conn.Open();
           
           SqlDataReader reader = cmd.ExecuteReader();
           while (reader.Read())
           {
               Car myCar = new Car();
               myCar.CarID = carID;
               Photo p = new Photo();
               p.PhotoID = Convert.ToInt32(reader["PhotoID"]);
               p.LinkToFile = reader["LinkToFile"].ToString();
               list.Add(p);
           }

          }
           return list;
       }

       //Search By Many Criteria
       public List<Car> SearchByManyCriteria(string make, string model, string type, double priceMin, double priceMax, string location)
       {
           List<Car> list = new List<Car>();

           if (make == "") { make = null; }
           if (model == "") { model = null; }
           if (type == "") { type = null; }
           if (priceMin == 0.0) { priceMin = 0; }
           if (priceMax == 0.0) { priceMax = 0; }
           if (location == "") { location = null; }

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_MultipleSearch", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@Make", make));
           cmd.Parameters.Add(new SqlParameter("@Model", model));
           cmd.Parameters.Add(new SqlParameter("@PriceMin", priceMin));
           cmd.Parameters.Add(new SqlParameter("@PriceMax", priceMax));
           cmd.Parameters.Add(new SqlParameter("@Location", location));
           cmd.Parameters.Add(new SqlParameter("@Type", type));

           //#3 run command
           using (conn)
           {
               conn.Open();
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   Car car = new Car();
                   car.CarID = Convert.ToInt32(reader["CarID"]);
                   car.Type = reader["Type"].ToString();
                   car.Make = reader["Make"].ToString();
                   car.Model = reader["Model"].ToString();
                   car.Color = reader["Color"].ToString();
                   car.Killometers = reader["Killometers"].ToString();
                   car.Location = reader["Location"].ToString();
                   car.Price = Convert.ToDouble(reader["Price"]);
                   car.Transmission = reader["Transmission"].ToString();
                   car.Condition = reader["Condition"].ToString();
                   car.Year = reader["Year"].ToString();
                   car.LinkToFile = reader["LinkToFile"].ToString();



                   list.Add(car);
               }
           }
           return list;
       }

        //Couunt All Cars
       public int CouuntAllCars()
       {
          int count = 0;

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_CountAllCars", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           

           //#3 run command
           using (conn)
           {
               conn.Open();
            
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   count++;
               }
           }
           return count;
       }

       //Couunt All Users
       public int CouuntAllUsers()
       {
           int count = 0;

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Accounts_CountAllAccounts", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;


           //#3 run command
           using (conn)
           {
               conn.Open();

               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   count++;
               }
           }
           return count;
       }


       //Couunt All Orders
       public int CouuntAllOrders()
       {
           int count = 0;

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Orders_CountAllOrders", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;


           //#3 run command
           using (conn)
           {
               conn.Open();

               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   count++;
               }
           }
           return count;
       }

       //Select All Cars
       public List<Car> SelectAllCars()
       {
           List<Car> list = new List<Car>();

           //#1 create connection
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();

           //#2 create command
           SqlCommand cmd = new SqlCommand("sp_Cars_SelectAllCars", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           

           //#3 run command
           using (conn)
           {
               conn.Open();
               SqlDataReader reader = cmd.ExecuteReader();

               //#4 handel the results
               while (reader.Read())
               {
                   Car car = new Car();
                   car.CarID = Convert.ToInt32(reader["CarID"]);
                   car.Type = reader["Type"].ToString();
                   car.Make = reader["Make"].ToString();
                   car.Model = reader["Model"].ToString();
                   car.Color = reader["Color"].ToString();
                   car.Killometers = reader["Killometers"].ToString();
                   car.Location = reader["Location"].ToString();
                   car.Price = Convert.ToDouble(reader["Price"]);
                   car.Transmission = reader["Transmission"].ToString();
                   car.Condition = reader["Condition"].ToString();
                   car.Year = reader["Year"].ToString();                   
                   list.Add(car);
               }
           }
           return list;
       }
   

    //Select Car By AccountID   
       public Car SelectCarByAccountID(int accountID)
       {
           Account account = new Account();
           Car car = new Car();
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString = ConfigHelper.GetConnectionString();
           conn.Open();

           SqlCommand cmd = new SqlCommand("sp_Cars_SelectCarByAccountID ", conn);
           cmd.CommandType = System.Data.CommandType.StoredProcedure;
           cmd.Parameters.Add(new SqlParameter("@AccountID", accountID));

           using (conn)
           {
               SqlDataReader reader = cmd.ExecuteReader();

               while (reader.Read())
               {               
                   car.CarID = (int)reader["CarID"];
                   car.Type = reader["Type"].ToString();
                   car.Make = reader["Make"].ToString();
                   car.Model = reader["Model"].ToString();
                   car.Color = reader["Color"].ToString();
                   car.Killometers = reader["Killometers"].ToString();
                   car.Location = reader["Location"].ToString();
                   car.Price = Convert.ToDouble(reader["Price"]);
                   car.Transmission = reader["Transmission"].ToString();
                   car.Condition = reader["Condition"].ToString();
                   car.Year = reader["Year"].ToString();
                   car.LinkToFile = reader["LinkToFile"].ToString();
                   car.AccountID = Convert.ToInt32(reader["AccountID"].ToString());
               }
           }
           return car;
       }
    }
}
