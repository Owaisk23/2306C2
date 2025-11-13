const Footer = () => {
  return (
    <footer className="bg-dark text-light py-5">
      <div className="container">
        <div className="row text-center text-md-left">
          {/* First Column - Subscription Section */}
          <div className="col-md-3 mb-4">
            <h5 className="font-weight-bold text-uppercase">Exclusive Offers</h5>
            <p>Sign up for our newsletter and enjoy 10% off your first purchase!</p>
            <input
              type="email"
              placeholder="Enter your email"
              className="form-control mb-2"
            />
            <button className="btn btn-danger btn-block">Subscribe</button>
          </div>

          {/* Second Column - Contact Info */}
          <div className="col-md-3 mb-4">
            <h6 className="font-weight-bold text-uppercase">Contact Us</h6>
            <p>1234 Market ,Pakistan CA 94111, PAK</p>
            <p>Email: support@ecommerce.com</p>
            <p>Phone: +1 (800) 123-4567</p>
          </div>

          {/* Third Column - Account Links */}
          <div className="col-md-3 mb-4">
            <h6 className="font-weight-bold text-uppercase">My Account</h6>
            <p>My Account</p>
            <p>Login / Register</p>
          </div>

          {/* Fourth Column - Quick Links */}
          <div className="col-md-3 mb-4">
            <h6 className="font-weight-bold text-uppercase">Quick Links</h6>
            <p>Privacy Policy</p>
            <p>Terms & Conditions</p>
            <p>Return & Exchange Policy</p>
          </div>
        </div>

        {/* Footer Bottom */}
        <div className="text-center mt-4 border-top pt-4">
          <p>&copy; 2025 Ecommerce All Rights Reserved.</p>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
