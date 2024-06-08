// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_with_firebase/view/home_screen/home_screen.dart';
import 'package:login_with_firebase/view/registration_screen/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //mail controller
  final emailController = TextEditingController();
  //password controller
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title:
            Text(style: TextStyle(fontWeight: FontWeight.bold), "Login Page"),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //to enter email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),

              //to enter password
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 30,
              ),

              //way to homescreen
              MaterialButton(
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text("Login"),
                color: Colors.white,
              ),
              SizedBox(
                height: 30,
              ),

              //for long line divider
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Or"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  ))
                ],
              ),
              SizedBox(
                height: 40,
              ),

              //Login throw icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Login throw Mail
                  InkWell(
                      onTap: () {
                        //function for ontap
                      },
                      child: Icon(
                        Icons.mail,
                      )),
                  SizedBox(
                    width: 40,
                  ),
                  //Login through Phone No
                  InkWell(
                    onTap: () {
                      //function for on tap
                    },
                    child: Icon(
                      Icons.phone,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //way to registrationscreen
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  child: Text("Not a usser? Register Now")),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}
