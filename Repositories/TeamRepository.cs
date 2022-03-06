using Bosphorus.Contexts;
using Bosphorus.Entity;
using Bosphorus.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Bosphorus.Repositories
{
    public class TeamRepository : GenericRepository<Team>, ITeamRepository 
    {
       
    }
}
