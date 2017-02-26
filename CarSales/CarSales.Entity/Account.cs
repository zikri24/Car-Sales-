using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CarSales.Entity
{
    //Account Properties
    public class Account
    {
        public int AccountID { get; set; }
        public string Role { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public DateTime DateCreated { get; set; }
        public Boolean IsActive { get; set; }

        public override string ToString()
        {
            return "Role: " + Role + "<br/> Username: " + Username + "<br/>Email :" + Email + "<br/> Date Created: " + DateCreated + "<br/>Active: " + IsActive;
        }
    }
}
