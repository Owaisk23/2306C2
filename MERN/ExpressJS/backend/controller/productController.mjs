import fs from 'node:fs';

const data = JSON.parse(fs.readFileSync('data.json', 'utf-8'));

let products = data.products;

let index = (req, res) => {
  try {
    res.status(200).json({ message: "Showing our products", products: products });
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: error.message })
  }
}

let singleProduct = (req, res) => {
  try {
    let id = req.params.id
    let product = products.find((prd) => {
      return prd.id == id;
    })
     if (product) {
      res.status(200).json({ message: "Product found", products: product });
    } else {
      res.status(404).json({ message: "No product found" });
    }
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: error.message })
  }
}

let addProduct = (req, res) => {
  try {
    let newProd = req.body;
    let addProduct = products.push(newProd);
    console.log(newProd);
    if (addProduct) {
      res.status(200).json({ message: "Product added", products: newProd });
    } else {
      res.status(404).json({ message: "No product found" });
    }
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: error.message })
  }
}

let deleteProduct = (req, res) =>{
  try {
    let id = req.params.id;
    let deletedProduct= products.find((prd)=>{
  return prd.id == id
})
let filteredProducts= products.filter((item)=>{item.id == id})
console.log(deletedProduct);
products=filteredProducts;


if (filteredProducts) {
  res.status(200).json({message:"Product deleted successfully",product:deletedProduct});
} else {
  res.status(404).json({message:"Can't delete right now"});
}
  } catch (error) {
    console.log(error);
    res.status(500).json({message:error.message})
  }
}


const productController = {
    index,
    singleProduct,
    deleteProduct,
    addProduct
};

export default productController;