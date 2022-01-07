import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/camera.dart';
import 'consel.dart';
import 'camera.dart';
import 'lockscreen.dart';
import 'test.dart';


void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

      appBar: AppBar(title: TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Lock()));


      }, child:const Text('WhatsApp',style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.w800),),),
      bottom:TabBar(isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.white,

        tabs: [

            IconButton(onPressed: (){

        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Camera()));

        },
        icon: Container( child: const Icon(Icons.camera_alt,size: 20.0,)),),
        Container(child: const Text('CHATS',style: TextStyle(fontSize: 17),)),
        Container(child: const Text('STATU',style: TextStyle(fontSize: 17),)),
        Container(child: const Text('CALLS',style: TextStyle(fontSize: 17),)),
        ],

      ),













      actions:  [
          IconButton
            (onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('KONJAM NALL AAGUM WAIT')));
          },
            icon:const Icon(Icons.search),padding:const EdgeInsets.only(right: 20),),

        PopupMenuButton(
            itemBuilder: (context) => [
               PopupMenuItem(
                child: TextButton(onPressed: (){print('new group created');}, child:const Text("New group")),
              ),
               PopupMenuItem(
                child:TextButton(onPressed: (){}, child:const Text("Linked device"))
              ),
               PopupMenuItem(
                child: TextButton(onPressed: (){}, child:const Text("Linked device"))
              ),
              PopupMenuItem(
                child:TextButton(onPressed: (){}, child:const Text("Starred messages"))
              ),
               PopupMenuItem(
                child: TextButton(onPressed: (){}, child:const Text("Payments"))
              ),
               PopupMenuItem(
                child:TextButton(onPressed: (){}, child:const Text("Settings"))
              ),


            ]
        )

      ],

      backgroundColor: const Color(0xff128c7e),
      ),
        
        body: 
        const Text('hi'),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Contact()));
        },child: const Icon(Icons.add),backgroundColor:const Color(0xff128c7e),),

    )
    );
  }
}
