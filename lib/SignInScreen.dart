import 'package:cablow/SignUpScreen.dart';
import 'package:cablow/VerificationScreen.dart';
import 'package:cablow/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 50),
          child: Column(children: <Widget>[
            Image.asset(
              "asset/image/Sign.png",
            ),
            const Text(
              "Sign In",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
            const SizedBox(
              height: 25,
            ),
            const IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Enter your Number',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey,
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryBtn(
              btnName: "Next",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationScreen()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()));
              },
              child: const Text(
                "create a new account",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
