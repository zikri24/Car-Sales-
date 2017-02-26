using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CarSales.Entity
{
    public enum ResultStatus
    {
        Success,
        Error,
        WrongUsername,
        WrongPassword,
        UsernameExists
    }
    public  class Result <T>
    {
        public T Data { get; set; }
        public ResultStatus Status { get; set; }
    }
}
