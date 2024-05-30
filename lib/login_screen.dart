import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FadeInUp(
                  duration: Duration(milliseconds: 1600),
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color.fromRGBO(143, 148, 251, 1),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromRGBO(143, 148, 251, 1),
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[700]),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[700]),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Check if email and password match expected values
                              if (emailController.text == "admin123" &&
                                  passwordController.text == "admin123") {
                                // Navigate to the profile screen when the credentials are correct
                                Navigator.pushNamed(context, '/home');
                              } else {
                                // Show an error message or handle incorrect credentials
                                // For example, you can display a SnackBar or showDialog
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Invalid email or password'),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 50), // Add spacing
                      // "Don't have an account?" text

                      // Sign up button wrapped in a container with background color
                      FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors
                                .blue, // Background color for the container
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Navigate to the sign-up screen
                              // Replace '/signup' with the appropriate route for your sign-up screen
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color:
                                    Colors.white, // Text color for the button
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
