using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Bosphorus.Contexts;

namespace Bosphorus.Repositories
{
    public class GenericRepository<Table> where Table : class, new() 
    {
        public void Add(Table t)
        {
            using var context = new Context();
            context.Set<Table>().Add(t);
            context.SaveChanges();
        }
        public void Delete(Table t)
        {
            using var context = new Context();
            context.Set<Table>().Remove(t);
            context.SaveChanges();
        }
        public void Update(Table t)
        {
            using var context = new Context();
            context.Set<Table>().Update(t);
            context.SaveChanges();
        }
        public List<Table> ListAll()
        {
            using var context = new Context();
            return context.Set<Table>().ToList();
        }
        public Table ListID(int id)
        {
            using var context = new Context();
            return context.Set<Table>().Find(id);
        }
    }
}
