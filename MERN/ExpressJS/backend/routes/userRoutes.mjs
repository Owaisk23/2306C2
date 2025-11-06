import express from 'express';
import userController from '../controller/userController.mjs';

const userRouter = express.Router();

userRouter
    .get('/', userController.index)
    .post('/signup', userController.Signup)
    .post('/login', userController.Login);
    

export default userRouter;