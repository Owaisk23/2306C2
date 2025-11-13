// src/components/Navbar.jsx
import { Link } from 'react-router-dom';
import { useState } from 'react';
import { useCart } from "./cartContext";
import { useWishlist } from "./WishlistContext";

const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);
  const { cart } = useCart();
  const { wishlist } = useWishlist();

  return (
    <>
      {/* Google Fonts */}
      <style>
        {`
          @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&display=swap');

          .dior-brand {
            font-family: 'Playfair Display', serif;
            letter-spacing: 3px;
            font-size: 1.9rem;
            color: #ffffff !important;
            text-shadow: 0 0 6px rgba(255, 255, 255, 0.3);
            transition: all 0.3s ease-in-out;
          }

          .dior-brand:hover {
            text-shadow: 0 0 12px rgba(255, 255, 255, 0.6);
          }

          .topbar {
            background-color: #f8f9fa;
            color: #212529;
            font-size: 14px;
            padding: 5px 0;
            text-align: center;
          }
        `}
      </style>

      {/* Topbar */}
      <div className="topbar">
        Summer Sale! 50% OFF and Free Express Delivery
      </div>

      {/* Navbar */}
      <nav className="navbar navbar-expand-lg" style={{ backgroundColor: 'black' }}>
        <div className="container">
          <Link className="navbar-brand dior-brand" to="/">
            DIOR
          </Link>

          <button
            className="navbar-toggler bg-light"
            type="button"
            onClick={() => setIsOpen(!isOpen)}
          >
            <span className="navbar-toggler-icon"></span>
          </button>

          <div className={`collapse navbar-collapse justify-content-center ${isOpen ? "show" : ""}`}>
            <ul className="navbar-nav mb-2 mb-lg-0">
              <li className="nav-item">
                <Link className="nav-link text-white" to="/">Home</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link text-white" to="/about">About</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link text-white" to="/contact">Contact</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link text-white" to="/signup">Sign Up</Link>
              </li>
            </ul>
            <div className="d-flex align-items-center gap-3 ms-auto">
              <Link to="/wishlist" className="position-relative text-decoration-none">
                <i className="bi bi-heart fs-4 text-white"></i>
                {wishlist.length > 0 && (
                  <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                    {wishlist.length}
                  </span>
                )}
              </Link>
              <Link to="/cart" className="position-relative text-decoration-none">
                <i className="bi bi-cart fs-4 text-white"></i>
                {cart.length > 0 && (
                  <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                    {cart.reduce((sum, item) => sum + item.quantity, 0)}
                  </span>
                )}
              </Link>
            </div>
          </div>
        </div>
      </nav>
    </>
  );
};

export default Navbar;
