import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formkey = GlobalKey<FormState>();
  //It creates a key that allows to control and access the Form widget from outside the Form.
  //GlobalKey lets you directly access a widget's state.

  //------------------------------Functions----------------------------
  void submit(){
    final isValid=_formkey.currentState!.validate();
    

  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Widget')),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    key: ValueKey('firstname'),
                    validator: (value) {
                      // // if(value!.isEmpty)
                      // {
                      if (value == null || value.isEmpty) {
                        return ('Please enter your first name');
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      firstname = newValue.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    key: ValueKey('lastname'),
                    validator: (value) {
                      // // if(value!.isEmpty)
                      // {
                      if (value == null || value.isEmpty) {
                        return ('Please enter your last name');
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      lastname = newValue.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    key: ValueKey('email'),
                    validator: (value) {
                      // // if(value!.isEmpty)
                      // {
                      if (value == null || value.isEmpty) {
                        return ('Please enter your email');
                      } else {
                        if (!value.contains('@')) {
                          return 'Enter valid email';
                        }
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      email = newValue.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    key: ValueKey('password'),
                    validator: (value) {
                      // // if(value!.isEmpty)
                      // {
                      if (value == null || value.isEmpty) {
                        return ('Please input password');
                      } else {
                        if (value.length < 8) {
                          return 'Password must be min 8 characters long';
                        }
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      password = newValue.toString();
                    },
                  ),
                  SizedBox(height: 50),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
