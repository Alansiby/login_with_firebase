// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_with_firebase/view/login_screen/login_screen.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  //mail controller
  final mailController = TextEditingController();
  //phone controller
  final phController = TextEditingController();
  //password controller
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text(
          "Register Now",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //for add mailId
            TextField(
              controller: mailController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Email",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //for add phonenumber
            TextField(
              controller: phController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Phone No",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //for add password
            TextField(
              controller: passController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 40,
            ),

            //button for reqisteration
            MaterialButton(
              shape: BeveledRectangleBorder(),
              color: const Color.fromARGB(255, 125, 183, 230),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
