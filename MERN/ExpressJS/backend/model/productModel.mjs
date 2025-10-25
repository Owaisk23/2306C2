import mongoose from 'mongoose';
const { Schema } = mongoose;

const productSchema = new Schema({
  title: String, // String is shorthand for {type: String}
});

const Product = mongoose.model('Product', productSchema);
export default Product;