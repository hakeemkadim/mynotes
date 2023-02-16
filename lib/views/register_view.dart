import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/TextFieldWidget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(209, 208, 248, 1),
              Color.fromRGBO(210, 208, 248, 0.9),
            ],
            // stops: [0.0, 0.5, 1.0],
            transform: GradientRotation(180)),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: IconButton(
                  iconSize: 28,
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 287, top: 10),
                child: Image.asset(
                  "Assets/stars.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sing Up",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 75),
                    const Text(
                      "Email address",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 14),
                    TextFieldContainer(
                      hintText: 'Enter your email address',
                      icon: Icons.email,
                      controller: _email,
                      obscureText: false,
                    ),
                    SizedBox(height: 18),
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 14),
                    TextFieldContainer(
                      hintText: 'Enter your password',
                      icon: Icons.password_outlined,
                      controller: _password,
                      obscureText: true,
                    ),
                    SizedBox(height: 18),
                    const Text(
                      "Confirm password",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 14),
                    TextFieldContainer(
                      hintText: 'repeat password',
                      icon: Icons.password_outlined,
                      controller: _confirmPassword,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF93A3F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 17, horizontal: 152),
                    elevation: 0,
                    shadowColor: Color(0xFF000000).withOpacity(0.25),
                  ),
                  onPressed: () async {
                    final email = _email.text;
                    final password = _password.text;
                    final confirmPassword = _confirmPassword.text;
                    if (password != confirmPassword) {
                      print("Passwords do not match");
                    } else {
                      try {
                        final userCredential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == "Weak password") {
                          print("weak password");
                        } else if (e.code == "email-already-in-use") {
                          print("Email already in use");
                        } else if (e.code == "invalid-email") {
                          print("invalid email");
                        }
                      }
                    }
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Log in',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
