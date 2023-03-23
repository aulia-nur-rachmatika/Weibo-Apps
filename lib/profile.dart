import 'package:flutter/material.dart';


void main() {
  runApp(Profile());
}
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
appBar: AppBar(

  leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:() => Navigator.of(context).pop(),),


),



        body: ListView(
          padding: const EdgeInsets.all(8),
          children:<Widget> [
            Stack(
              children: [
                Container(

                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.50,
                  decoration: BoxDecoration(

                    image: DecorationImage(
                        image: AssetImage('images/r.jpg'),
                        fit: BoxFit.cover),),),
                Positioned
                  (bottom: 4,
                  left: 4,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [const
                      Text("Aulia Nur Rachmatika"),
                        Text('Online',style: TextStyle(fontWeight: FontWeight.w100),)
                      ],
                    ),),)],),

            ListTile(title: Text('Account',style: TextStyle(fontSize: 15,color: Colors.blue),),),
            ListTile(title: Text('+6281234567890',style: TextStyle(fontSize: 17),),
              subtitle: Text('Tap to change phone number',style: TextStyle(fontWeight: FontWeight.w100)),
            ),
            ListTile(title: Text('aulianurrachmatika02@gmail.com',style: TextStyle(fontSize: 17,),),
              subtitle: Text('Username',style: TextStyle(fontWeight: FontWeight.w100),),
            ),
            ListTile(
              title: Text('Bio',style: TextStyle(fontSize: 17)),
              subtitle: Text('Love Yourself'),

            ),

          ],
        ),
      ),
    );



  }
}






