import express from 'express';
import productController from '../controller/productController.mjs';
import { upload } from '../cloudinaryConfig.mjs';
import userController from '../controller/userController.mjs';
const productRouter = express.Router();

productRouter
    .get('/',  productController.index)
    .get('/:id', productController.singleProduct)
    // .post('/', productController.addProduct)
    .post('/', productController.create)
    // .post('/addproduct', upload.single('image'),productController.addProductWithImage);
    .post('/addproduct', upload.array('image'),productController.addProductWithImage);
            // routeName, middleware,         middleware,           controllerFunction
    // .delete('/:id', productController.deleteProduct);

export default productRouter;