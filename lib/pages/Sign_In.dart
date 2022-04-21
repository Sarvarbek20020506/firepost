import 'package:firepost/pages/home_page.dart';
import 'package:firepost/pages/signup.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static final String id = 'signin_page';

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  _doLogIn(){
    String email=emailController.toString().trim();
    String password=passwordController.toString().trim();
    Navigator.pushReplacementNamed(context, HomePage.id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/back2.jpeg'),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //#LogIn text
              Container(
                child: const Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 50,),
              //#Mail
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 30, right: 30),
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
              const SizedBox(height: 20,),
              //#PAsword
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 30, right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70,
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    label: Text(
                      'Password',
                      style: TextStyle(color: Colors.blue),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              //# DO Log In
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
                    _doLogIn;
                  },
                  child: Text("Sign In",style: TextStyle(fontSize:20),),
                ),
              ),
              const SizedBox(height: 20,),
              //Dont have account
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 45,
                width: double.infinity,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, SignUpPage.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Don't have account?",style: TextStyle(fontSize:15),),
                      SizedBox(width: 10,),
                      Text("Sign Up",style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),),
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
//Image.network('https://i.pinimg.com/564x/34/34/d0/3434d0170b66edc091db4822746c79b3.jpg'),
