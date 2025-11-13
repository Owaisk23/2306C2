import React from "react";
import { useWishlist } from "./WishlistContext";

const Wishlist = () => {
  const { wishlist, removeFromWishlist } = useWishlist();

  return (
    <div className="container py-5">
      <h2 className="mb-4">My Wishlist</h2>
      {wishlist.length === 0 ? (
        <div className="alert alert-info">Your wishlist is empty.</div>
      ) : (
        <div className="row">
          {wishlist.map((item, i) => (
            <div className="col-md-3 mb-4" key={i}>
              <div className="card h-100 text-center p-3 border-0 shadow-sm">
                <img src={item.img} alt={item.title} className="card-img-top mx-auto" style={{ width: 100, height: 100, objectFit: "contain" }} />
                <div className="card-body">
                  <div className="fw-semibold mb-1" style={{ fontSize: 16 }}>{item.title}</div>
                  <div className="text-danger mb-1">Price: ${item.newPrice || item.price}</div>
                  <button className="btn btn-outline-danger btn-sm mt-2" onClick={() => removeFromWishlist(item.id)}>
                    Remove
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default Wishlist; 