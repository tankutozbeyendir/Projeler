﻿using Bosphorus.Entity;
using Bosphorus.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
namespace Bosphorus.Repositories
{
    public class ContactRepository : GenericRepository<Contact>, IContactRepository
    {
    }
}
