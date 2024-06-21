import 'package:flutter/material.dart';
import 'package:login_screen/components/btn.dart';
import '../components/texe_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow/elevation
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              //logo
              Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 60,
              ),

              //welcome text
              Text(
                "Welcome back you\'ve been missed!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 30,
              ),

              //username textfield
              text_field(
                controller: usernameController,
                hintText: "Username",
                obsecureText: false,
              ),
              const SizedBox(
                height: 10,
              ),

              //password textfield
              text_field(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              ),
              const SizedBox(
                height: 20,
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //sign in button

              my_button(
                onTap: signUser,
              ),

              //or continue with

              //google signin

              //not a member regster
            ],
          ),
        ),
      ),
    );
  }
}
