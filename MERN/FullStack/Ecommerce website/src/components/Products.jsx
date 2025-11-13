import ProductCard from "./ProductCard";
import { Link } from "react-router-dom";

export const products = [
  {
    img: "https://c8.alamy.com/comp/2WX1Y3D/miss-dior-luxury-perfume-glass-bottle-of-on-a-stand-it-was-founded-in-1946-by-french-fashion-designer-christian-dior-2WX1Y3D.jpg",
    title: "Dior Sauvage",
    oldPrice: 300,
    newPrice: 250,
  },
  {
    img: "https://pocketsscents.com/cdn/shop/files/IMG-3121.jpg?v=1727624976",
    title: "Dior Homme",
    oldPrice: 280,
    newPrice: 240,
  },
  {
    img: "https://pimcdn.sharafdg.com/cdn-cgi/image/width=600,height=600,fit=pad/images/000000000001082517_1?1703601730",
    title: "J'adore Eau de Parfum",
    oldPrice: 320,
    newPrice: 270,
  },
  {
    img: "https://www.shutterstock.com/image-photo/kuala-lumpur-malaysia-november-10-260nw-2229470295.jpg",
    title: "Miss Dior Blooming",
    oldPrice: 290,
    newPrice: 260,
  },
  {
    img: "https://5.imimg.com/data5/SELLER/Default/2024/1/376958463/XA/QE/NW/124548603/miss-dior-eau-de-perfume.jpg",
    title: "Fahrenheit by Dior",
    oldPrice: 250,
    newPrice: 210,
  },
  {
    img: "https://images-fe.ssl-images-amazon.com/images/I/51EtHbUlDJL._AC_UL600_SR600,600_.jpg",
    title: "Dior Addict",
    oldPrice: 270,
    newPrice: 230,
  },
  {
    img: "https://i.pinimg.com/474x/f8/92/6b/f8926b7c14f452a97e8f6859f2cf15f2.jpg",
    title: "Dior Dune",
    oldPrice: 260,
    newPrice: 220,
  },
  {
    img: "https://i.pinimg.com/736x/ca/8c/08/ca8c086f2fa6418e61170eca8b61e822.jpg",
    title: "Hypnotic Poison",
    oldPrice: 280,
    newPrice: 240,
  },
];

const Products = () => {
  return (
    <div className="container py-5">
      {/* Elegant Heading */}
      <div className="text-center mb-5">
        <p 
          style={{
            color: "#a05260",
            fontSize: "0.9rem",
            letterSpacing: "3px",
            fontWeight: "600",
            fontFamily: "'Poppins', sans-serif",
            textTransform: "uppercase"
          }}
        >
          Our Products
        </p>

        <h2 
          style={{
            fontSize: "2.7rem",
            fontFamily: "'Playfair Display', serif",
            fontWeight: "600",
            fontStyle: "italic",
            color: "#a05260",
            marginBottom: "0"
          }}
        >
      Discover the Essence of Dior
        </h2>
      </div>

      {/* Products */}
      <div className="row">
        {products.map((item, index) => (
          <div className="col-md-3 mb-4" key={index}>
            <Link to={`/product/${index}`} style={{ textDecoration: 'none', color: 'inherit' }}>
              <ProductCard
                id={index}
                img={item.img}
                title={item.title}
                oldPrice={item.oldPrice}
                newPrice={item.newPrice}
              />
            </Link>
          </div>
        ))}
      </div>

      {/* View Button */}
      <div className="text-center mt-4">
        <button className="btn btn-danger btn-lg rounded-pill px-5">
          View All Perfumes
        </button>
      </div>
    </div>
  );
};

export default Products;
