using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HaberSitesiMVC.Models.Classes
{
    public class User
    {
        public int ID { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string email { get; set; }
    }
}