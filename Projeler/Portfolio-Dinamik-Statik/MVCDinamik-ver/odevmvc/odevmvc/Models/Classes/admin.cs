﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace odevmvc.Models.Classes
{
    public class admin
    {
        [Key]
        public int ID { get; set; }
        public string User { get; set; }
        public string Password { get; set; }
    }
}