import 'package:flutter/material.dart';


class Lock extends StatelessWidget {
  const Lock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Lockscreen();
  }
}

class Lockscreen extends StatefulWidget {
  const Lockscreen({Key? key}) : super(key: key);

  @override
  _LockscreenState createState() => _LockscreenState();
}

class _LockscreenState extends State<Lockscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('WhatsApp'), backgroundColor: const Color(0xff128c7e),

        leading:IconButton(onPressed: () { Navigator.pop(context); }, icon:const Icon(Icons.arrow_back),),

),

    );
  }
}



