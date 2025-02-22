using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
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
    }
}
