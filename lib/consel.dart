import 'package:flutter/material.dart';


class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:const Text('select contact'), backgroundColor: const Color(0xff128c7e),

          leading:IconButton(onPressed: () { Navigator.pop(context); }, icon:const Icon(Icons.arrow_back),),

        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.search),),
          IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon(Icons.more_vert),),
        ],),
      ),
    );
  }
}
