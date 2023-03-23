import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Nav());
}
class Nav extends StatelessWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          brightness: Brightness.dark
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  late int index;
  List showWidget=[


    //HOme
    Center(child:
    Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Nama: Aulia Nur Rachmatika",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),textAlign: TextAlign.center,),
        Text("Nim: 200605110094",style:
        TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center),
        Text("Asal:Tuban",
            style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center)],),),


//Search
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter username",
              labelStyle: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
              suffixIcon: Icon(Icons.account_circle),
              enabledBorder: OutlineInputBorder(

                borderSide: BorderSide(color:Colors.green,width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),

              ),

            ),
          ),
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
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),

            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(onPressed: (){}, child: const Text("Submit"))
        ],
      ),
    ),



    //Reels
    Center(child:
    Container(

      height: 450,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('images/R.jpg'),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(30)
      ),

      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Wrap(

        spacing: 20,
        children: [

          ElevatedButton.icon(onPressed: (){},
              style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)

              )),
              icon: Icon(Icons.play_circle_outline),

              label: Text("play")),
          ElevatedButton.icon(onPressed: (){},
              style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)

              )),
              icon: Icon(Icons.share),
              label: Text("share")),

        ],
      ),
    ),),




//account
    ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        Center(
          child:CircleAvatar(
            backgroundImage: AssetImage('images/profile.png'),
            backgroundColor: Colors.greenAccent.shade200,
            radius: 80,
          ),),
        Text("Paula Beno",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700,color: Colors.blue.shade100,),textAlign: TextAlign.center,),
        Card(child:
        ListTile(title: Text("Account"),leading: Icon(Icons.account_circle),),),
        Card(child: ListTile(title: Text("Settings"),leading: Icon(Icons.settings),),),
        Card(child: ListTile(title: Text("Favorite"),leading: Icon(Icons.favorite),),),
        Card(child: ListTile(title: Text("Light Mode"),leading: Icon(Icons.light_mode),),),
        Card(child: ListTile(title: Text("Logout"),leading: Icon(Icons.logout),),),




      ],),

  ];
  void initState(){
    index=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom'),

      ),
      body:showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        backgroundColor: Colors.blue,
        selectedItemColor:Colors.amber ,
        unselectedItemColor: Colors.greenAccent,
        currentIndex: index,
        onTap: (value){
          setState(() {
            index=value;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline),
              label: "shop"),

          BottomNavigationBarItem(
              icon: CircleAvatar(radius: 15,
                backgroundImage:AssetImage('images/profile.png',),),label: "Profile"
          ),

        ],),


    );


  }
}







