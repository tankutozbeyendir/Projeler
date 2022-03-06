using Microsoft.EntityFrameworkCore;
using Bosphorus.Entity;

namespace Bosphorus.Contexts
{
    public class Context : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=DESKTOP-930T07G;database=bosphorusDB;integrated security=true;");
        }
        public DbSet<Services> services { get; set; }
        public DbSet<Contact> contacts { get; set; }
        public DbSet<Team> teams { get; set; }
        public DbSet<About> abouts { get; set; }
    }
}
