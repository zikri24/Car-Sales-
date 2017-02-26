using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//.....
using CarSales.Entity;

namespace CarSales.Entity
{
    //Body Type
    public enum BodyType
    {
        Sedan,
        HatchBack,
        SUV,
        Wagon,
        Van,
        Ute,
        Convertible,
        Coupe,

    }

    //Transmission
    public enum Transmission
    {
        Auto,
        Manual,
        STronic
    }

    //Condition
    public enum Condition
    {
        New,
        SecondHand,
        Used
    }

    //Car Class
    public class Car
    {
        public int CarID { get; set; }
        public string Type { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
        public string Year { get; set; }
        public string Color { get; set; }
        public string Killometers { get; set; }
        public string Transmission { get; set; }
        public string Condition { get; set; }
        public double Price { get; set; }
        public string Location { get; set; }
        public string LinkToFile { get; set; }
        public List<Photo> MyPhoto { get; set; }
        public int AccountID { get; set; }

        public override string ToString()
        {
            return Make + ", " + Model+ ", " + Year + ", " +  Color+", "+ Location;
        }

    }
}
