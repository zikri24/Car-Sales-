using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CarSales.Entity
{
    public class OrderDetails
    {
        public int OrderNo { get; set; }
        public int CarID { get; set; }
        public double Price { get; set; }
    }
}
