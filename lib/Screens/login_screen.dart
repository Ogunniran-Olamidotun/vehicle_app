import 'package:flutter/material.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:vehicle_repair_booking_app/widgets/trc_field.dart';
import 'package:vehicle_repair_booking_app/widgets/bottom_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  final String correctEmail = 'olamidotun@gmail.com';
  final String correctPassword = '123456';
  String _message = '';

  void _login() {
    final email = _emailcontroller.text.trim();
    final password = _passwordcontroller.text;

    if (email == correctEmail && password == correctPassword) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomBar()),
        (route) => false,
      );
    } else {
      setState(() {
        _message = 'Invalid email or password.';
      });
    }
  }
  @override
    void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        children: [
          Column(
            children: [
              Text('Welcome Back',
              style: Styles.title,),
              Gap(15),
              Text('Log in and pick up right where you left',
              style: Styles.subtitle.copyWith(
                color: Colors.black
              ),),
              Gap(42),
              TextFieldInput(
                label: 'Email',
                controller: _emailcontroller,
                hintText: 'Enter your email',
                ),
               Gap(20),
              TextFieldInput(
                label: 'Password',
                controller: _passwordcontroller,
                hintText: 'Enter your password',
                suffixIcon: Icon(Icons.password_outlined),
                isObscureText: true,
                obscureCharacter: '*',
                ),
                Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                    style: Styles.smalltext,)
                  ],
                ),

                Gap(337),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Styles.primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 141, vertical: 15 ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: _login,
                    child: Text('Log In',
                    style: Styles.header.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),)),
                )



            ],
          )
        ],
      ),
      

    );
  }
}