
import React from 'react';

const Contact = () => {
  return (
    <div className="container py-5">
      <h2 className="text-center mb-4">Contact Us</h2>
      <div className="row">
        <div className="col-md-6">
          <h4>Get In Touch</h4>
          <p>Have any questions? We'd love to hear from you!</p>
          <ul className="list-unstyled">
            <li><strong>Address:</strong>Karachi,Pakistan</li>
            <li><strong>Email:</strong> exclusive@gmail.com</li>
            <li><strong>Phone:</strong> +880123456789</li>
          </ul>
        </div>
        <div className="col-md-6">
          <form>
            <div className="mb-3">
              <input type="text" className="form-control" placeholder="Your Name" />
            </div>
            <div className="mb-3">
              <input type="email" className="form-control" placeholder="Your Email" />
            </div>
            <div className="mb-3">
              <textarea className="form-control" rows="4" placeholder="Your Message"></textarea>
            </div>
            <button type="submit" className="btn btn-danger w-100">Send Message</button>
          </form>
        </div>
      </div>
    </div>
  );
};

export default Contact;
