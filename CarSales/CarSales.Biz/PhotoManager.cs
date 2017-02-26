using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//...
using CarSales.Entity;
using CarSales.Data;


namespace CarSales.Biz
{
    
    public static class PhotoManager
    {
        //Insert Photos
        public static ResultStatus InsertPhoto(Photo p)
        {
            ResultStatus result = new ResultStatus();
            try
            {
                PhotoDao dao = new PhotoDao();
                dao.InsertPhoto(p);
            }
            catch (Exception)
            {

                result = ResultStatus.Error;
            }
            return result;
        }
    

    //Select Photos
        public static Result<List<Photo>> SelectPhoto(int carID)
        {
            Result<List<Photo>> result = new Result<List<Photo>>();
            try
            {
                PhotoDao dao = new PhotoDao();
                result.Data = dao.SelectPhotos(carID);
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
