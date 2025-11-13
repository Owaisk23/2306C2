import React from 'react';

const About = () => {
  return (
    <div className="container my-5">
      {/* Section: Our Story */}
      <div className="text-center mb-5">
        <h2 className="fw-bold" style={{ fontFamily: 'Playfair Display, serif', letterSpacing: '2px' }}>
          The Art of Beauty
        </h2>
        <p className="text-muted w-75 mx-auto" style={{ fontSize: '1.1rem' }}>
          At Dior Makeup, we believe that beauty is an expression of individuality and elegance. 
          Founded with the vision of redefining luxury, our products are crafted to empower and inspire confidence in every woman. 
          We celebrate sophistication, innovation, and timeless beauty.
        </p>
      </div>

      {/* Image + Stats */}
      <div className="row align-items-center mb-5">
        <div className="col-md-6 mb-4 mb-md-0">
          <img 
            src="https://plaza-senayan.com/wordpress/wp-content/uploads/1-1-640x426.jpeg" 
            alt="Dior Beauty" 
            className="img-fluid rounded shadow"
          />
        </div>
        <div className="col-md-6 text-center">
          <div className="row">
            <div className="col-6 mb-4">
              <h4 className="fw-bold">500K+</h4>
              <p className="text-muted">Happy Customers</p>
            </div>
            <div className="col-6 mb-4">
              <h4 className="fw-bold">1000+</h4>
              <p className="text-muted">Exclusive Products</p>
            </div>
            <div className="col-6 mb-4">
              <h4 className="fw-bold">120</h4>
              <p className="text-muted">Global Stores</p>
            </div>
            <div className="col-6 mb-4">
              <h4 className="fw-bold">75+</h4>
              <p className="text-muted">Awards Won</p>
            </div>
          </div>
        </div>
      </div>

      {/* Section: Our Team */}
      <div className="text-center mb-5">
        <h3 className="fw-bold" style={{ fontFamily: 'Playfair Display, serif', letterSpacing: '2px' }}>
          Meet Our Experts
        </h3>
        <p className="text-muted w-75 mx-auto" style={{ fontSize: '1.1rem' }}>
          Our team of beauty experts, makeup artists, and visionaries work tirelessly 
          to bring the Dior magic into every collection. Their dedication, creativity, and passion 
          are the heart of everything we create.
        </p>
      </div>

      {/* Team Members */}
      <div className="row text-center">
        <div className="col-md-4 mb-4">
          <img 
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjl9txv49p9IexrugHGev5ihRnSdOLuyunWw&s" 
            alt="Creative Director" 
            className="img-fluid rounded-circle shadow mb-3" 
            style={{ width: '150px', height: '150px', objectFit: 'cover' }}
          />
          <h5 className="fw-bold">Sophie Laurent</h5>
          <p className="text-muted">Creative Director</p>
        </div>
        <div className="col-md-4 mb-4">
          <img 
            src="https://i.ytimg.com/vi/WHqtOxNG4ok/maxresdefault.jpg" 
            alt="Lead Makeup Artist" 
            className="img-fluid rounded-circle shadow mb-3" 
            style={{ width: '150px', height: '150px', objectFit: 'cover' }}
          />
          <h5 className="fw-bold">Isabelle Moreau</h5>
          <p className="text-muted">Lead Makeup Artist</p>
        </div>
        <div className="col-md-4 mb-4">
          <img 
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqUwjWud2OiefgXdJoEFvB9DKltmSKKldMzQ&s" 
            alt="Marketing Head" 
            className="img-fluid rounded-circle shadow mb-3" 
            style={{ width: '150px', height: '150px', objectFit: 'cover' }}
          />
          <h5 className="fw-bold">Alexandre Dubois</h5>
          <p className="text-muted">Marketing Head</p>
        </div>
      </div>
    </div>
  );
};

export default About;
