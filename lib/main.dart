import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp(MaterialApp(
    home: MyApp(

    ),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future showAlert(BuildContext context,String message) async{
    return showDialog(
      builder: (context) => AlertDialog(
        title: Text(message),
      actions: [
        TextButton(onPressed:() => Navigator.pop(context), child: Text("ok"))
      ],), context: context );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Container(
        child: Center(
          child:Column(
            children: [
              Text("Add Something Here"),
              ElevatedButton(onPressed:() =>  showAlert(context, 'Do you like flutter, I do!'), child: new Text('Click me'),)
              ],
              ),
          )
      ),
    );
  }
}