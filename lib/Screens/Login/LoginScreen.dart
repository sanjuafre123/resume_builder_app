import 'package:flutter/material.dart';
import 'package:resume_builder_app/Utils/Color/Color_List.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPassword = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Registration',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: color1,
            ),
          ),
          elevation: 1,
          shadowColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const SizedBox(height: 90),
                const Row(
                  children: [
                    Text('Email Address'),
                  ],
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.blue)),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Sanjuafre08@gmail.com',
                    suffixIconColor: Colors.teal,
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text('Password'),
                  ],
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: txtPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(

                      borderSide: BorderSide(width: 2, color: Colors.blue),
                    ),
                    hintText: '123456789',


                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff6C23B1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/board');
                        },
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey.shade900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffFDFBFC),
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Google.png',
                            height: 30,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey.shade700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Don`t have an account?',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
