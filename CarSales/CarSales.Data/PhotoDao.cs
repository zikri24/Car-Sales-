using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//...
using System.Data.SqlClient;
using CarSales.Common;
using CarSales.Entity;


namespace CarSales.Data
{
    public class PhotoDao
    {
        //Insert Photos
        public void InsertPhoto(Photo p)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();
            conn.Open();

            SqlCommand cmd = new SqlCommand("sp_Links_InsertPhoto", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            Photo photo = new Photo();
            cmd.Parameters.Add(new SqlParameter("@linkToFile", p.LinkToFile));
            cmd.Parameters.Add(new SqlParameter("@carID", p.CarID));


            using (conn)
            {
                cmd.ExecuteNonQuery();

            }
        }

        //Select Photos
        public List<Photo> SelectPhotos(int carID)
        {
            List<Photo> list = new List<Photo>();

            //#1 create connection
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigHelper.GetConnectionString();

            //#2 create command
            SqlCommand cmd = new SqlCommand("sp_Links_SelectPhotos", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@carID", carID));

            //#3 run command
            using (conn)
            {
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                //#4 handel the results
                while (reader.Read())
                {
                    Photo photo = new Photo();
                    photo.LinkToFile = reader["LinkToFile"].ToString();

                    list.Add(photo);
                }
            }
            return list;
        }
    }
}
