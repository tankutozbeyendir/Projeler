using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
namespace Bosphorus.Interfaces
{
    public interface IGenericRepository<Table> where Table : class, new()
    {
        public void Add(Table t);
        public void Delete(Table t);
        public void Update(Table t);   
        public Table ListID(int id);
        public List<Table> ListAll();
    }
}
