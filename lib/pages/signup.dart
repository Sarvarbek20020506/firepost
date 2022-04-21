import 'package:flutter/material.dart';

import 'Sign_In.dart';
import 'home_page.dart';
class SignUpPage extends StatefulWidget {
  static const String id='signup_page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var fullnameController=TextEditingController();
  doSignUp(){
    String fullname=fullnameController.toString().trim();
    String password=passwordController.toString().trim();
    String mail=emailController.toString().trim();

    Navigator.pushReplacementNamed(context, HomePage.id);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back2.jpeg'),
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 120),
                child: const Text(
                  'SignUp',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //#Fullname
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70,
                ),
                child:  TextField(
                  controller:fullnameController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.title ),
                    label: Text(
                      'Fullname',
                      style: TextStyle(color: Colors.blue),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70,
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    label: Text(
                      'Mail',
                      style: TextStyle(color: Colors.blue),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70,
                ),
                child:  TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    label: Text(
                      'password',
                      style: TextStyle(color: Colors.blue),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 100, right: 100),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                child:FlatButton(
                  onPressed: (){
                    doSignUp();
                  },
                  child: Text("Sign Up",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 45,
                width: double.infinity,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, SignInPage.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("i have already any account!",style: TextStyle(fontSize:15),),
                      SizedBox(width: 10,),
                      Text("Sign In",style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
