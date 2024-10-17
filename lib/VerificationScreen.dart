import 'package:cablow/HomeScreen.dart';
import 'package:cablow/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 150),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/image/Verification.png",
                  width: 150,
                  height: 150,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Phone Verification",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Enter your OTP code",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OTPTextField(
                      length: 4,
                      width: MediaQuery.of(context).size.width * 0.7,
                      fieldWidth: 45,
                      spaceBetween: 5,
                      style: const TextStyle(fontSize: 17),
                      textFieldAlignment: MainAxisAlignment.center,
                      fieldStyle: FieldStyle.box,
                      onCompleted: (pin) {
                        print("Completed: $pin");
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Didn’t receive Code?",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Resand again",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 100,
                ),
                PrimaryBtn(
                  btnName: "Verify",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                )
                // Padding(
                //   padding: const EdgeInsets.only(top: 25, bottom: 23),
                //   child: ElevatedButton(
                //       onPressed: () {
                //         // Navigator.push(
                //         //     context,
                //         //     MaterialPageRoute(
                //         //         builder: (context) =>
                //         //         const HomeScreen()));
                //       },
                //       style: ElevatedButton.styleFrom(
                //           minimumSize: const Size(double.infinity, 45),
                //           backgroundColor: const Color(0xFFEF8120),
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(10))),
                //       child: const Text(
                //         "Verify",
                //         style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.w800,
                //             color: Colors.white),
                //       )),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
