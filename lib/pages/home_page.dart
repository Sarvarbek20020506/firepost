import 'package:firepost/pages/Sign_In.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
           // Navigator.pushReplacement(context, SignInPage.id),
          },
          color: Colors.blue,
          child: Text("Log Out",style: TextStyle(fontSize:20),),
        ),
      ),
    );
  }
}
