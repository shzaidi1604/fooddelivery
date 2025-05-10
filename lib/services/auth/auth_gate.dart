import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/services/auth/login_or_register.dart';
import 'package:fooddelivery/views/homepage.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot){
          // logged in user
          if(snapshot.hasData){
            return Homepage();
          }
          // user not logged in
          else{
            return LoginOrRegister();
          }
        }),
    );
  }
}