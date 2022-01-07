import 'package:flutter/material.dart';


class TEst extends StatelessWidget {
  const TEst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(onPressed: (){ Navigator.pop(context); },child: Text('test'),)
      ),
    );
  }
}
