import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/mainpage.dart';
import 'package:untitled4/saved.dart';
import 'profile.dart';
import 'saved.dart';
import 'likes.dart';
import 'watch.dart';
import 'setting.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("All",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),

        actions: [
          Icon(Icons.search),

        ],
    // leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:() {
    //   Navigator.pop(context,MaterialPageRoute(builder: (context)=>
    //   MyApp()));
    // },
    //   ),
      ),



      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              child:
              UserAccountsDrawerHeader(currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/r.jpg'),
              ),
              accountName: Text('auliatikaa'),accountEmail: Text('aulianurrachmatika@gmail.com'),
              ),

              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Profile();
                }));
              },
            )
            ,

            ListTile(
              leading: Icon(Icons.star_border_outlined),
              title: Text('Saved'),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)

                {
                  return Saved();
                }));
              },

            ),
            ListTile(
              leading: Icon(Icons.thumb_up_off_alt),
              title: Text('Likes'),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)

                {
                  return Likes();
                }));
              },

            ),
            ListTile(
              leading: Icon(Icons.watch_later_outlined),
              title: Text('Watch later'),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)

                {
                  return Watch();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)

                {
                  return Setting();
                }));
              },
            ),
          ],
        ),
      ),






      //mainpage

      body:


      ListView(
        padding: const EdgeInsets.only(top: 5),
        children:<Widget> [






          Container(

      height: 290,
      child:   Card(
        color: Colors.grey.shade900,
           child:
           ListTile(

    title: Padding(
    padding: EdgeInsets.only(top: 0),
    child:
    Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children:[
      SizedBox(height: 10),
    Text('He Luoluo',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),

    Text('15 minutes ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

      SizedBox(height: 15),

      Text('Favorite place',style: TextStyle(fontSize: 20),),
      SizedBox(height: 5),

      Image(image: AssetImage('images/satu.jpg',),width: 450,height: 150,),


    ],),),
             subtitle:
    Padding(
    padding: EdgeInsets.only(top: 0),
    child: Container(

      color: Colors.grey.shade900,
    child:
    Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
      Icon(Icons.thumb_up,size: 20,),

    Text('20.4k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
      SizedBox(width: 30),
      Icon(Icons.comment,size: 20,),
      Text('30k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),

      SizedBox(width: 30),
      Icon(Icons.ios_share,size: 20,),
      Text('5.2k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
    ],),),),

    leading: CircleAvatar(backgroundImage: AssetImage('images/hll.jpg'),),
             trailing: Icon(Icons.keyboard_arrow_down_sharp),
),),),

SizedBox(height: 30),



          //dua
          Container(
            height: 290,
            child:   Card(
              color: Colors.grey.shade900,
              child:
              ListTile(

                title: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      SizedBox(height: 10),
                      Text('Zhou Zhennan',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),

                      Text('2 hours ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

                      SizedBox(height: 15),

                      Text('You Jump, I Jump MV',style: TextStyle(fontSize: 18),),
                      SizedBox(height: 5),

                      Image(image: AssetImage('images/tiga.png',),width: 450,height: 150,),
                      Text('30.1k views',style: TextStyle(fontSize: 12,color: Colors.grey.shade400),),
                    ],),),

                subtitle:
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(

                    color: Colors.grey.shade900,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Icon(Icons.thumb_up,size: 20,),

                        Text('50.1k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
                        SizedBox(width: 30),
                        Icon(Icons.comment,size: 20,),
                        Text('67.2k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),

                        SizedBox(width: 30),
                        Icon(Icons.ios_share,size: 20,),
                        Text('10k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
                      ],),),),

                leading: CircleAvatar(backgroundImage: AssetImage('images/zz.jpg'),),
                trailing: Icon(Icons.keyboard_arrow_down_sharp),
              ),),),

          SizedBox(height: 30),




          //tiga
          Container(
            height: 290,
            child:   Card(
              color: Colors.grey.shade900,
              child:
              ListTile(

                title: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      SizedBox(height: 10),
                      Text('Ren Hao',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),

                      Text('2 days ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

                      SizedBox(height: 15),

                      Text('Sky ☁️',style: TextStyle(fontSize: 18),),
                      SizedBox(height: 5),

                      Image(image: AssetImage('images/sk.jpg',),width: 450,height: 170,),

                    ],),),

                subtitle:
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(

                    color: Colors.grey.shade900,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Icon(Icons.thumb_up,size: 20,),

                        Text('5.2k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
                        SizedBox(width: 30),
                        Icon(Icons.comment,size: 20,),
                        Text('2.2k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),

                        SizedBox(width: 30),
                        Icon(Icons.ios_share,size: 20,),
                        Text('1.2k',style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
                      ],),),),

                leading: CircleAvatar(backgroundImage: AssetImage('images/rh.jpg'),),
                trailing: Icon(Icons.keyboard_arrow_down_sharp),
              ),),),

          SizedBox(height: 30),


    ], ),

      );








  }
}
