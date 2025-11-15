import mongoose from 'mongoose';
const { Schema } = mongoose;

const productSchema = new Schema({
  title: {type: String, required: [true, "Title is required"]},
  description: {type: String},
  price: {
    type: Number, 
    required: [true, "Price is required"]
  },
  discountedPercentage: {
    type: Number, 
    // required: [true, "discountedPercentage is required"],
    min: [0, "Discounted percentage can't be less than 0"],
    max: [50, "Discounted percentag must be less than 50"], 
  },
  rating: {
    type: Number, 
    min: [0, "Rating can't be less than 0"],
    max: [5, "Rating must be less than 5"],
    default: 0, 
  },
  stock: {
    type: Number, 
    min: [0, "Stock can't be less than 0"],},
  // brand: {type: String, required: [true, "Brand is required"]},
  category: {type: String, required: [true, "Category is required"]},  
  thumbnail: {type: String, required: [true, "Thumnail is required"]},  
  images: {type: [String], required: [true, "Images is required"]},  
});

const Product = mongoose.model('Product', productSchema);
export default Product;