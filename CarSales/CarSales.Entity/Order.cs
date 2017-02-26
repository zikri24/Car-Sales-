using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CarSales.Entity
{
   public class Order
    {
        public int OrderNo { get; set; }
        public int AccountID { get; set; }
        public DateTime DateTime { get; set; }
        public double Total { get; set; }
        public string  Status { get; set; }
    }
}
