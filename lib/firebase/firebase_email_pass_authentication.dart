import 'package:flutter/material.dart';
import 'package:flutter_widgets/functions/authfunctions.dart';

class FirebaseEmailPassAuthentication extends StatefulWidget {
  const FirebaseEmailPassAuthentication({super.key});

  @override
  State<FirebaseEmailPassAuthentication> createState() =>
      _FirebaseEmailPassAuthenticationState();
}

class _FirebaseEmailPassAuthenticationState
    extends State<FirebaseEmailPassAuthentication> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = true;
  String emailAddress = '';
  String password = '';
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Email Pass Authentication',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey('username'),
                      decoration: InputDecoration(hintText: 'Enter username'),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username must be at least 3 characters long';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        setState(() {
                          username=newValue!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: 'Enter email'),
                validator: (value) {
                  if(!value.toString().contains('@')){
                    return 'Invalid email format';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  setState(() {
                    emailAddress=newValue!;
                  });
                },
              ),

              TextFormField(
                key: ValueKey('password'),
                obscureText: true,
                decoration: InputDecoration(hintText: 'Enter password'),
                validator: (value) {
                  if(value.toString().length<6){
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  setState(() {
                    password=newValue!;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                ),

                onPressed: () {
                  if(_formkey.currentState!.validate()){
                    _formkey.currentState!.save();
                    !isLogin ? signup(emailAddress, password):login(emailAddress, password);
                  }
                  
                },
                child: isLogin ? Text('Login') : Text('Signup'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: !isLogin
                    ? Text('Already have an account ? Login')
                    : Text('Don\t have an account ? Signup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
