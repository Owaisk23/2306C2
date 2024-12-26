using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using search.Models;
using System.Diagnostics;

namespace search.Controllers
{
	public class HomeController : Controller
	{
		private readonly EcommerceContext db;

		public HomeController(EcommerceContext _db)
		{
			db = _db;
		}

		public IActionResult Index()
		{
			return View(db.Products.ToList());
		}
		[HttpPost]
		public IActionResult Index(string searchQuery)
		{
			// Retrieve products from the database
			var products = string.IsNullOrEmpty(searchQuery)
			? db.Products.ToList() // If no search, return all products
				: db.Products
					.Where(p => p.Pname.Contains(searchQuery) || p.Description.Contains(searchQuery))
					.ToList(); // Search logic

			ViewData["SearchQuery"] = searchQuery; // Pass search query back to view
			return View(products);
		}

		public IActionResult Privacy()
		{
			return View();
		}

		[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}
	}
}
