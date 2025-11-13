import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom'; // <-- Very important!

import { FaEnvelope, FaLock } from 'react-icons/fa';

const Login = () => {
  const navigate = useNavigate(); // <-- For redirect
  const [formData, setFormData] = useState({
    email: '',
    password: ''
  });

  const [errors, setErrors] = useState({});

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value
    });
  };

  const validate = () => {
    const newErrors = {};

    if (!formData.email.trim()) {
      newErrors.email = 'Email is required';
    } else if (!/\S+@\S+\.\S+/.test(formData.email)) {
      newErrors.email = 'Email is invalid';
    }
    if (!formData.password.trim()) {
      newErrors.password = 'Password is required';
    }

    return newErrors;
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const validationErrors = validate();

    if (Object.keys(validationErrors).length > 0) {
      setErrors(validationErrors);
    } else {
      setErrors({});
      console.log('Login Successful:', formData);

      // Yahan backend ka API lagta normally
      // Abhi bas directly redirect kar rahe hain

      navigate('/'); // <-- After login, redirect to Home
    }
  };

  return (
    <div className="container d-flex justify-content-center align-items-center" style={{ minHeight: '90vh' }}>
      <div className="card p-4 shadow-lg" style={{ width: '100%', maxWidth: '450px', borderRadius: '20px', background: '#f8f9fa' }}>
        
        <h2 className="text-center mb-4" style={{ fontFamily: 'Playfair Display, serif', letterSpacing: '2px' }}>
          Welcome Back
        </h2>

        <form onSubmit={handleSubmit}>
          
          <div className="mb-3">
            <label className="form-label">Email</label>
            <div className="input-group">
              <span className="input-group-text bg-white"><FaEnvelope /></span>
              <input 
                type="email" 
                className={`form-control ${errors.email ? 'is-invalid' : ''}`} 
                name="email" 
                value={formData.email}
                onChange={handleChange}
                placeholder="Enter your email"
              />
              {errors.email && <div className="invalid-feedback">{errors.email}</div>}
            </div>
          </div>

          <div className="mb-4">
            <label className="form-label">Password</label>
            <div className="input-group">
              <span className="input-group-text bg-white"><FaLock /></span>
              <input 
                type="password" 
                className={`form-control ${errors.password ? 'is-invalid' : ''}`} 
                name="password" 
                value={formData.password}
                onChange={handleChange}
                placeholder="Enter your password"
              />
              {errors.password && <div className="invalid-feedback">{errors.password}</div>}
            </div>
          </div>

          <button type="submit" className="btn btn-dark w-100 rounded-pill">Login</button>

        </form>

        <p className="text-center mt-3 small">
          Don't have an account? <a href="/signup" className="text-decoration-none">Sign Up</a>
        </p>

      </div>
    </div>
  );
};

export default Login;
