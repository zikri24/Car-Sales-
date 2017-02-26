using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CarSales.Entity
{
    public class Photo
    {
        public int PhotoID { get; set; }
        public int CarID { get; set; }
        public string LinkToFile { get; set; }
        public Car MyCar { get; set; }
    }
}
