import 'package:flutter/material.dart';
import 'package:fooddelivery/services/auth/auth_service.dart';
import 'package:fooddelivery/views/homepage.dart';
import 'package:fooddelivery/widgets/my_button.dart';
import 'package:fooddelivery/widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  Function()? onTap;
  LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /*

    Login Method
  method for calling login with backend will call later

  */

  void login() async {
    final _authService = AuthService();

    //sign in
    try {
      await _authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open,
              size: 60,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(height: 25),

            //slogan text
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            SizedBox(height: 25),

            //email textfield
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            SizedBox(height: 15),

            //password textfield
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            SizedBox(height: 15),

            //signin button
            MyButton(onTap: login, text: "Sign In"),

            SizedBox(height: 15),

            //register now text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
