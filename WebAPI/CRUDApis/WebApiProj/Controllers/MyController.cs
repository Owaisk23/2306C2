using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApiProj.Models;

namespace WebApiProj.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MyController : ControllerBase
    {
        private readonly  ProductsContext db;

        public MyController(ProductsContext _db)
        {
            db = _db;
        }

        [HttpGet]
        public IActionResult GetProducts()
        {

            return Ok(db.Products.ToList());
        }
        [HttpGet("{id}")]
        public IActionResult GetProducts(int id)
        {

            return Ok(db.Products.Find(id));
        }
        [HttpPost]
        public IActionResult AddProducts(ProductDTO product)
        {
           
                var newprod =new Product();
                newprod.Description=product.Description;
                newprod.Name=product.Name;
                newprod.Price=product.Price;

                db.Products.Add(newprod);
                db.SaveChanges();
                return StatusCode(201);
          
        }
        [HttpDelete]
        public IActionResult DeleteProducts(int id)
        {
            var product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return StatusCode(201);
        }

        [HttpPut("{id}")]
        public IActionResult UpdateProducts(int id, Product updateProduct)
        {
            var product = db.Products.Find(id);
            product.Name = updateProduct.Name;
            product.Price = updateProduct.Price;
            product.Description = updateProduct.Description;
            db.Products.Update(product);
            db.SaveChanges();
            return StatusCode(201);
        }

        [HttpGet("Search/{query}")]
        public IActionResult SearchProduct(string query)
        {
            // For partial match search
            var products = db.Products
                                   .Where(o => o.Name.Contains(query)
                                           || o.Description.Contains(query)
                                          )
                                   .ToList(); // Partial Match

            return Ok(products);
        }

        //[HttpGet("Search}/{query}")]
        ////[Route("{Search}/{query}")]
        //public IActionResult SearchProduct(string query)
        //{
        //   // var products = _context.Products.Include(o => o.Brand).Where(o => o.Name==query || o.Description==query).ToList();//Exact match

        // var products = _context.Products.Include(o => o.Brand).Where(o => o.Name.Contains(query) || o.Description.Contains(query)
        // .ToList();//Partial Match

        //    return Ok(products);
        //}


        [HttpGet("Pagination/{pageNo}/{pageSize}")]
        public IActionResult Pagination(int pageNo = 1, int pageSize = 2)
        {
            int pageno = pageNo;
            if (pageno < 1) pageno = 1;
            int pagesize = pageSize;
            if (pagesize < 1) pagesize = 1;
            //5 -4 *5=> 3 *5=15
            var getEvents = db.Products.Skip((pageno - 1) * pagesize).Take(pagesize);

            if (getEvents != null)
            {
                return Ok(getEvents);
            }
            else
            {

                return Ok("End of list");
            }
            //return BadRequest("INVALID DATA");
        }
    }
}
