﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HaberSitesiMVC.Models.Classes
{
    public class Admin
    {
        [Key]
        public int id { get; set; }
        public string kullanici { get; set; }
        public string sifre { get; set; }
    }
}