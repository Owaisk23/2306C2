// const express = require('express')

import express from 'express';
// import path from 'path';
// import fs from 'node:fs';
// const mongoose = require('mongoose');
import mongoose from 'mongoose';
import productRouter from './routes/productRoutes.mjs';
import userRouter from './routes/userRoutes.mjs';
import dotenv from 'dotenv';
import cors from 'cors';

const app = express()
const port = 3000
app.use(express.json());
app.use(cors());
dotenv.config();

main().catch(err => console.log(err));

async function main() {
  await mongoose.connect('mongodb+srv://owaisahmedkhan:owais123@cluster0.mbgw7ps.mongodb.net/Fragnance');
  console.log("MongoDB Connected!")
  // use `await mongoose.connect('mongodb://user:password@127.0.0.1:27017/test');` if your database has auth enabled
}

// const dirname = path.resolve();

// const data = JSON.parse(fs.readFileSync('data.json', 'utf-8'));

// let products = data.products;

// app.get('/', (req, res) => {
//   res.send('Hello World!')
// })

// // app.get('/contact', (req, res) => {
// //   res.send('Hello from Contact Page!')
// // })

// app.get('/about', (req, res) => {
//   res.send('Hello from About Page!')
// })
// app.get('/image', (req, res) => {

//   res.sendFile(`${dirname}/static/pixel.jpg`);
// })

// app.use('/home', express.static(dirname, { index: '/static/index.html' }));

// // Router Parameters (The are compulsory)
// // app.get('/product/:id', (req, res) => {
// //   res.json({ name: 'Product No: ' + req.params.id });
// // })

// app.get('/posts/:id', (req, res) => {
//   let postId = req.params.id;
//   let postObj = [
//     {
//       postId: 1,
//       title: 'Palestine Ceases Fire',
//       content: 'After 1100 days of conflict, a ceasefire was announced between',
//     },
//     {
//       postId: 2,
//       title: 'Ukraine War',
//       content: 'The war in Ukraine has caused unprecedented destruction and',
//     },
//     {
//       postId: 3,
//       title: 'Global Economic Outlook',
//       content: 'The global economy is facing significant challenges due to',
//     }
//   ];

//   postObj.map((post) => {
//     if (post.postId == postId) {
//       console.log(post);
//       postObj = post;
//     }
//   })
//   res.json(postObj);
// })


// // Query Parameters (They are option)
// app.get('/categories', (req, res) => {
//   if (req.query.name) {
//     res.json({ name: "Category: " + req.query.name })
//   }
//   else {
//     res.json({ name: "All Categories" })
//   }
// })

// // Request Body (They are used to send data to server)
// app.get('/contact', (req, res) => {
//   // const name = req.body.name;
//   // const age = req.body.age;
//   // const city = req.body.city;

//   // Destructing
//   const { name, age, city } = req.body;
//   res.json({ name: name, age: age, city: city })
// })

// //fetch data
// app.get('/products', (req, res) => {
//   try {
//     res.status(200).json({ message: "Showing our products", products: products });
//   } catch (error) {
//     console.log(error);
//     res.status(500).json({ message: error.message })
//   }
// })

// //fetch data by id
// app.get('/product/:id', (req, res) => {
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
// })

// //Add Product 
// app.post('/addproduct', (req, res) => {
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
// })

// // //Delete product

// app.delete('/deleteproduct/:id', (req, res) =>{
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
// })



app.use('/products', productRouter)
app.use('/users', userRouter)



app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
