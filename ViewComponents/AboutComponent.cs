using Bosphorus.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bosphorus.ViewComponents
{
    public class AboutComponent : ViewComponent
    {
        IAboutRepository _aboutRepository;
        public AboutComponent(IAboutRepository aboutRepository)
        {
            _aboutRepository = aboutRepository;
        }
       
        public IViewComponentResult Invoke()
        {
            return View(_aboutRepository.ListAll());
        }
    }
}
