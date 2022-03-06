using Bosphorus.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bosphorus.ViewComponents
{
    public class ServiceComponent : ViewComponent
    {
        private readonly IServiceRepository _serviceRepository;

        public ServiceComponent(IServiceRepository serviceRepository)
        {
            _serviceRepository = serviceRepository;
        }
        public IViewComponentResult Invoke()
        {
            return View(_serviceRepository.ListAll());
        }
    }
}
