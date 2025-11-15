// src/pages/Home.jsx
import React from 'react';
import Banner from '../components/Banner';
import Categories from '../components/Categories';
import BestSelling from '../components/BestSelling';
import Products from '../components/Products';
import Footer from '../components/Footer';
import axios from 'axios';
import { useState, useEffect } from 'react';

const Home = () => {
  const [products, setProducts] = useState([])

const getProducts= async (params)=> {
  const response= await axios.get("http://localhost:3000/products");
  console.log(response.data)
  setProducts(response.data.products)

}
  useEffect(() => {
    getProducts();
  
   
  }, [])
  
  return (
    <div>
      <Banner />
      <Categories />
      <BestSelling />
      <Products allproducts={products}/>
      <Footer/>
    </div>
  );
};

export default Home;
