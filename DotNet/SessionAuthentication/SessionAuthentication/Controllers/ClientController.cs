using Microsoft.AspNetCore.Mvc;

namespace SessionAuthentication.Controllers
{
    public class ClientController : Controller
    {
        public IActionResult Index()
        {
            if (HttpContext.Session.GetString("role") == "client")
            {

                return View();
            }
            else
            {
                return RedirectToAction("Login", "Admin");
            }
        }
    }
}
