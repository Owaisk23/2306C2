import fs from 'node:fs';
import Product from '../model/productModel.mjs';

// const data = JSON.parse(fs.readFileSync('data.json', 'utf-8'));

// let products = data.products;


// Fetching data from database
let index = async (req, res) => {
  try {
    const products = await Product.find();
    if(products.length > 0){
      res.status(200).json({ message: "Products found", products: products });
    } else {
      res.status(404).json({ message: "No products found" });
    }
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: error.message })
  }
}

// fetch data by id
let singleProduct = async (req, res) => {
  try {
    let id = req.params.id;
    const product = await Product.findById(id);
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


let create = async (req, res) => {
  try {
    const {
      title,
      description,
      price,
      discountedPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      images
    } = req.body;


    const product = new Product({
      title,
      description,
      price,
      discountedPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      images
    });

    // mongoose method to save data to database
    const addProd = await product.save();
    // mongodb method to save data to database
    // let addProd = await Product.insertOne(product);

    res.status(201).json({
      message: "Product created successfully",
      product: addProd
    });

  } catch (error) {
    console.log(error);

    if (error.name === "ValidationError") {
      return res.status(400).json({ message: error.message });
    }

    res.status(500).json({ message: error.message });
  }
};

// let singleProduct = (req, res) => {
//   try {
//     let id = req.params.id
//     let product = products.find((prd) => {
//       return prd.id == id;
//     })
//      if (product) {
//       res.status(200).json({ message: "Product found", products: product });
//     } else {
//       res.status(404).json({ message: "No product found" });
//     }
//   } catch (error) {
//     console.log(error);
//     res.status(500).json({ message: error.message })
//   }
// }

// let addProduct = (req, res) => {
//   try {
//     let newProd = req.body;
//     let addProduct = products.push(newProd);
//     console.log(newProd);
//     if (addProduct) {
//       res.status(200).json({ message: "Product added", products: newProd });
//     } else {
//       res.status(404).json({ message: "No product found" });
//     }
//   } catch (error) {
//     console.log(error);
//     res.status(500).json({ message: error.message })
//   }
// }

// let deleteProduct = (req, res) =>{
//   try {
//     let id = req.params.id;
//     let deletedProduct= products.find((prd)=>{
//   return prd.id == id
// })
// let filteredProducts= products.filter((item)=>{item.id == id})
// console.log(deletedProduct);
// products=filteredProducts;


// if (filteredProducts) {
//   res.status(200).json({message:"Product deleted successfully",product:deletedProduct});
// } else {
//   res.status(404).json({message:"Can't delete right now"});
// }
//   } catch (error) {
//     console.log(error);
//     res.status(500).json({message:error.message})
//   }
// }


const productController = {
    index,
    singleProduct,
    // deleteProduct,
    // addProduct
    create
};

export default productController;