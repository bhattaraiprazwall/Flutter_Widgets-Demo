import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/homepage.dart';

class FacebookLoginClone extends StatefulWidget {
  const FacebookLoginClone({super.key});

  @override
  State<FacebookLoginClone> createState() => _FacebookLoginCloneState();
}

class _FacebookLoginCloneState extends State<FacebookLoginClone> {
  final _formkey = GlobalKey<FormState>();
  String email = "prajwalbhattarai80@gmail.com";
  String password = 'prajwal@123';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    if (_formkey.currentState!.validate()) {
      if (emailController.text == email &&
          passwordController.text == password) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login Successful'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );

        Future.delayed(const Duration(seconds: 1), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Invalid Email Or Password'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromRGBO(221, 223, 226, 1.0),
        width: 1.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: Colors.blue, size: 36),
                  Text(
                    'facebook',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: _formkey,

              child: Container(
                margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Mobile number or email',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(141, 148, 158, 1.0),
                        ),
                        focusedBorder: border,
                        enabledBorder: border,
                        errorBorder: border,
                        focusedErrorBorder: border,
                        disabledBorder: border,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        } else {
                          if (!value.contains('@')) {
                            return 'Enter valid email';
                          }
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(141, 148, 158, 1.0),
                        ),
                        focusedBorder: border,
                        enabledBorder: border,
                        errorBorder: border,
                        focusedErrorBorder: border,
                        disabledBorder: border,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters long';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: login,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color.fromRGBO(24, 119, 242, 1),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(6),
                          ),
                        ),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color.fromRGBO(24, 119, 242, 1)),
                    ),
                    SizedBox(height: 25),

                    // Divider(),
                    //OR Section
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromRGBO(
                              221,
                              223,
                              226,
                              1.0,
                            ), // Matches your input borders
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: Color.fromRGBO(
                                75,
                                79,
                                86,
                                1.0,
                              ), // A medium grey for the text
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromRGBO(221, 223, 226, 1.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),

                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromRGBO(66, 183, 42, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(6),
                        ),
                      ),
                      child: Text('Create New Account'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
