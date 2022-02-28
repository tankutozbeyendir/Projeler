using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.SqlClient;

namespace HaberSitesiMVC.Models.Classes
{
    public class Context : DbContext
    {
        public DbSet<Admin> admins { get; set; }
        public DbSet<Haber> habers { get; set; }
        public DbSet<İletisim> iletisims { get; set; }
        public DbSet<Yorum> yorums { get; set; }
        public DbSet<EklenecekHaberler> ekleneceks { get; set; }
        public DbSet<User> Users { get; set; }
    }
}