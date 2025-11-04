import User from "../model/userModel.mjs";
import bcrypt from "bcrypt";

let index =async (req, res) => {
   try {
    let users= await User.find();
    if (users) {
      res.status(200).json({message:"Our users",users:users});
    } else {
      res.status(500).json({message:"Failed to fetch users"});
    }
  
    
  } catch (error) {
    console.log(error);
    res.status(500).json({message:error.message})
  }
}

// add product
let Signup =async (req, res) => {
   try {
    const { username , email, password}=req.body;
    // checking if the user doesn't exist
    let checkUser= await User.findOne({email:email});
    if (checkUser) {
      res.status(200).json({message:"User already exist from this email. Please login..!"});
    } else {
      // hashing the password
      const hashPassword = bcrypt.hashSync( password   , 10);
      console.log(hashPassword);
      let newUser= new User(
        {
        username,
        email,
        password:hashPassword,
        }
      )
    //   mongooose method to save the data
      let adduser =await newUser.save();
      if (adduser) {
        res.status(200).json({message:"Registration is sucessfull.",user:adduser});
        
      } else {
      
        res.status(500).json({message:"Failed to register user"});
      }
    }


  } catch (error) {
    console.log(error);
    res.status(500).json({message:error.message})
  }
}

const userController={
    index,
    Signup,
}

export default userController;