import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/mainpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 40),

          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login For Continue'),
              SizedBox(height: 30),
              CircleAvatar( backgroundImage: AssetImage('images/weibo.jpeg'),
                backgroundColor: Colors.greenAccent.shade200,
                radius: 30,),
            SizedBox(height: 30),
            TextFormField(
            decoration: const InputDecoration(
            labelText: "Enter username",
            labelStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,),
            suffixIcon: Icon(Icons.account_circle),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.green,width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),),),),
        SizedBox(height: 20),
//password
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Enter password",
            labelStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
            suffixIcon: Icon(Icons.lock),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.green,width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),),),),
        SizedBox(height: 30),

        ElevatedButton(

          child: Text('Login'),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const MainPage();
            },),);},style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),

           fixedSize: const Size(500, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80))
        ),
        ),
],
      ),),),);
  }
}
