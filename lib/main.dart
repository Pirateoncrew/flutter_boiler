import 'package:flutter/material.dart';
import './page/Homepage.page.dart';
import './theme/MyTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

Widget render(){
  return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme,
      home:Homepage()
    );
}
  @override
  Widget build(BuildContext context) {
    return render();
  }
}
