import ProductCard from "./ProductCard";

const BestSelling = () => {
  const bestSellingProducts = [
    {
      img: "https://i.ebayimg.com/images/g/OL4AAOSwMuhl2mxS/s-l400.jpg", 
      title: "Dior LipOil",
      oldPrice: 40000,
      newPrice: 350000,
    },
    {
      img: "https://www.lmching.com/cdn/shop/files/christian-dior-miss-dior-rose-n-roses-20ml-50ml-100ml-lmching-group-limited-3_540x.jpg", 
      title: "Dior Elixir",
      oldPrice: 12000,
      newPrice: 19000,
    },
    {
      img: "https://i.pinimg.com/736x/5f/03/90/5f0390a4dc52e100d8eb85967bf0854c.jpg",
      title: "Dior Essentials",
      oldPrice: 31110,
      newPrice: 27130,
    },
    {
      img: "https://contenthub-delivery.mecca.com/api/public/content/may-wk1-herobanner-mothersday-mobile-3x4-5n51ECYTRewNEDuBfvtEw.webp?v=9e0f6eae",
      title: "Aromatic blend",
      oldPrice: 26590,
      newPrice: 30000,
    },
  ];

  return (
    <div className="container py-5">
    
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
          This Month
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
         Luxury Must-Haves
        </h2>
      </div>

      {/* Product Cards */}
      <div className="row mt-4">
        {bestSellingProducts.map((product, i) => (
          <div className="col-md-3 mb-4" key={i}>
            <ProductCard {...product} />
          </div>
        ))}
      </div>
    </div>
  );
};

export default BestSelling;
