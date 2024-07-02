import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        body: SafeArea(
        child: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Let`s Get Started!',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                letterSpacing: 2.0,
                fontSize: 25.5,
              ),
            ),
            SizedBox(height: 10.0,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Email'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)

                ),

              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please provide a valid email';
                }
                return null;
              },
              onSaved: (value){
                email = value!;
              },
            ),
            SizedBox(height: 30.0,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please provide a password';
                }
                if(value.length < 8){
                  return 'Password should be atleast 8 characters long';
                }
                if(value.length > 20){
                  return 'Password should be atleast 20 characters long';
                }
                return null;
              },
              onSaved: (value){
                password = value!;
              },
            ),
            SizedBox(height: 30.0,),
            ElevatedButton(
              onPressed: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  print(email);
                  print(password);

                }
              },
              child: Text('Log In'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[400],
                foregroundColor: Colors.black,
              ),
            ),
          ],
          ),
        ),
          ),
    );

  }
}
