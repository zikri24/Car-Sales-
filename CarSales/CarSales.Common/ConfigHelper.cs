using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//.....
using System.Configuration;

namespace CarSales.Common
{
    public static class ConfigHelper
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["CarSalesDB"].ToString();

        }

    }
}
