using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace odevmvc.Models.Classes
{
    public class Context : DbContext
    {
        public DbSet<admin> Admins { get; set; }
        public DbSet<contact> Contacts { get; set; }
        public DbSet<project> Projects { get; set; }

    }
}