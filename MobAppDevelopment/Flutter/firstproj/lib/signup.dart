import 'package:flutter/material.dart';
import 'package:firstproj/drawerSide.dart' as drawerSide;

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _signupKey = GlobalKey<FormState>(); // unique key
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void RegisterUser() {
    if (_signupKey.currentState!.validate()) {
      print("User added succesfully");
      print("email: ${emailController.text}");
      print("username: ${userNameController.text}");
      print("pass: ${passController.text}");
      emailController.text = '';
      userNameController.text = '';
      passController.text = '';
    } else {
      print("Please insert valid details");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Signup",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: drawerSide.DrawerSide(),
      body: Center(
          child: Container(
              height: 700,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      width: 1, color: Colors.grey, style: BorderStyle.solid)),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Form(
                    key: _signupKey,
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Text(
                          "Create an account..",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Username is required");
                            }
                            return null;
                          },
                          controller: userNameController,
                          decoration: InputDecoration(
                              labelText: "Username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.person_2),
                              hintText: "enter username"),
                        ),
                        // email
                        SizedBox(height: 20,),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("email is required");
                            }
                            if (!RegExp(
                                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
                              return ("email format is not valid");
                            }
                            return null;
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder(),
                              hintText: "enter email"),
                        ),

                        //password
                        SizedBox(height: 20, ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("password is required");
                            }
                            if (!RegExp(
                                    r'^(?=.*[a-z])(?=.*\d)[A-Za-z\d@$!%*?&]{5,}$').hasMatch(value)) {
                              return ("password must have an uppercase,lowercase,digit, special character and have at least 5 characters");
                            }
                            return null;
                          },
                          controller: passController,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: "enter password"),
                        ),

                        SizedBox(height: 20,),
                        // submit button
                        ElevatedButton(
                            onPressed: RegisterUser, child: Text("Sign up"))

                        // TextField()
                      ],
                    ),
                  )))),
      // drawer: ,
      // bottomNavigationBar: ,
    );
  }
}