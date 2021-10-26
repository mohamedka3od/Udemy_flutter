import 'package:flutter/material.dart';
import 'package:udemy_flutter/counter_screen.dart';
import 'package:udemy_flutter/home_screen.dart';
import 'package:udemy_flutter/login_screen.dart';
import 'package:udemy_flutter/messenger_screen.dart';
import 'package:udemy_flutter/users_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     debugShowCheckedModeBanner: false,
     home: CounterScreen(),
   );
  }
}

