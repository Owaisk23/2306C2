import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _loginkey = GlobalKey<FormState>(); // unique key

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var users = FirebaseFirestore.instance.collection("users");

  void LoginUser() async {
    if (_loginkey.currentState!.validate()) {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: emailController.text,
              password: passController.text,
            );
        print("Login success");
        //getting user details
        String uid = credential.user!.uid;
        var userData = await users.doc(uid).get();
        var userDetails = userData.data();
        print(userDetails);

        //setting user detail in shared preferences
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLoggedIn", true);

        prefs.setString("role", userDetails!["role"]);
        prefs.setString("username", userDetails!["username"]);
        prefs.setString("id", uid);
        prefs.setString("email", userDetails!["email"]);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Signed in as ${emailController.text}",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 43, 62, 188),
          ),
        );

        if (userDetails!["role"] == "admin") {
          prefs.setBool("isAdmin", true);
          Navigator.pushNamed(context, "/add");
        } else {
          prefs.setBool("isAdmin", false);
          Navigator.pushNamed(context, "/products");
        }
      } on FirebaseAuthException catch (e) {
        print("Login fail");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Login failed",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 43, 62, 188),
          ),
        );
        print(e.code);
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'invalid-credential') {
          print('Wrong password provided for that user.');
        }
      }
    } else {
      print("Please insert valid details");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // drawer: MyDrawer(),
      body: Center(
        child: Container(
          height: 700,
          width: 350,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: _loginkey,
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Text(
                    "Signin to your account..",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  // email
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("email is required");
                      }
                      if (!RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                      ).hasMatch(value)) {
                        return ("email format is not valid");
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(),
                      hintText: "enter email",
                    ),
                  ),

                  //password
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("password is required");
                      }
                      if (!RegExp(
                        r'^(?=.*[a-z])(?=.*\d)[A-Za-z\d@$!%*?&]{5,}$',
                      ).hasMatch(value)) {
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
                      hintText: "enter password",
                    ),
                  ),

                  SizedBox(height: 20),
                  // submit button
                  ElevatedButton(onPressed: LoginUser, child: Text("Sign in")),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                    child: Text("Not a user? Register now"),
                  ),
                  // TextField()
                ],
              ),
            ),
          ),
        ),
      ),
      // drawer: ,
      // bottomNavigationBar: ,
    );
  }
}
