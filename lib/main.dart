import 'package:flutter/material.dart';
import 'package:assignment3/skype.dart';
import 'package:assignment3/whatsappstatus.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        title: 'My App',
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: SkypeHomePage(),
      //body: StatusPage(), //uncomment this line for whatsapp status layout
    );
  }
}
