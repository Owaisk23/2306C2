// src/pages/Home.jsx
import React from 'react';
import Banner from '../components/Banner';
import Categories from '../components/Categories';
import BestSelling from '../components/BestSelling';
import Products from '../components/Products';
import Footer from '../components/Footer';

const Home = () => {
  return (
    <div>
      <Banner />
      <Categories />
      <BestSelling />
      <Products />
      <Footer/>
    </div>
  );
};

export default Home;
