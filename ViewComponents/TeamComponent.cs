using Bosphorus.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bosphorus.ViewComponents
{
    public class TeamComponent : ViewComponent
    {
        private readonly ITeamRepository _teamRepository;
        public TeamComponent(ITeamRepository teamRepository)
        {
            _teamRepository = teamRepository;
        }
       
        public IViewComponentResult Invoke()
        {
            return View(_teamRepository.ListAll());
        }
    }
}
