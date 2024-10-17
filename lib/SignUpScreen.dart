import 'package:cablow/SignInScreen.dart';
import 'package:cablow/VerificationScreen.dart';
import 'package:cablow/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
            const SizedBox(
              height: 25,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
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
              height: 25,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
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
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const VerificationScreen()));
            //     },
            //     style: ElevatedButton.styleFrom(
            //         minimumSize: const Size(double.infinity, 45),
            //         backgroundColor: Colors.purple[100],
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(10))),
            //     child: const Text(
            //       "Next",
            //       style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.w800,
            //           color: Colors.white),
            //     )),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()));
              },
              child: const Text(
                "already have an account ??",
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
