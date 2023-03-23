import 'package:flutter/material.dart';

void main() {
  runApp(Watch());
}
class Watch extends StatelessWidget {
  const Watch({Key? key}) : super(key: key);

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
      body:
      ListView(
        padding: const EdgeInsets.all(8),
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





        ],),);

  }
}






