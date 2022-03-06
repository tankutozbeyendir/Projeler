using Bosphorus.Contexts;
using Bosphorus.Entity;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Bosphorus.Controllers
{
    public class AccountController : Controller
    {
        Context c = new Context();
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Login(Team t)
        {
            var infos = c.teams.FirstOrDefault(x => x.TeamFullName == t.TeamFullName && x.TeamPassword == t.TeamPassword);
            if(infos != null)
            {
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, t.TeamFullName)
                };
                HttpContext.Session.SetString("userName", t.TeamFullName);
                var identity = new ClaimsIdentity(claims, "Login");
                ClaimsPrincipal pr = new ClaimsPrincipal(identity);
                await HttpContext.SignInAsync(pr);
                
                return RedirectToAction("Index", "Account");
            }
            return View();
        }
        [Authorize]
        public IActionResult Index()
        {
            return View();
        }
    }
}
