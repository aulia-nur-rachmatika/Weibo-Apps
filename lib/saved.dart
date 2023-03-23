import 'package:flutter/material.dart';

void main() {
  runApp(Saved());
}
class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        actions: [
          Icon(Icons.search),

        ],
        leading:IconButton(icon:Icon(Icons.arrow_back),onPressed:() => Navigator.of(context).pop(),),
        // leading: IconButton(icon:Icon(Icons.arrow_back),onPressed:() {
        //   Navigator.pop(context,MaterialPageRoute(builder: (context)=>
        //   MyApp()));
        // },
        //   ),
      ),
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

    Text('07-29',style: TextStyle(fontSize: 14,color: Colors.grey),),

    SizedBox(height: 15),

    Text('Share picture',style: TextStyle(fontSize: 20),),
    SizedBox(height: 5),

    Image(image: AssetImage('images/hl.jpg',),width: 450,height: 150,),


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

                  Text('07-29',style: TextStyle(fontSize: 14,color: Colors.grey),),

                  SizedBox(height: 15),

                  Text('Share picture',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 5),

                  Image(image: AssetImage('images/zz.jpg',),width: 450,height: 150,),


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

            leading: CircleAvatar(backgroundImage: AssetImage('images/zzn.jpg'),),
            trailing: Icon(Icons.keyboard_arrow_down_sharp),
          ),),),

      SizedBox(height: 30),

      Center(
        child:
        Text('No More Data'),
      )








    ],
    ),




    );

  }
}






