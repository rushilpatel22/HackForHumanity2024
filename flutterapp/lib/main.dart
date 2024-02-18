import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(setSystemUIOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarIconBrightness: Brightness.dark
  // ));
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Profiledit(),
    );
  }
}

class Profiledit extends StatelessWidget {
  const Profiledit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(''),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: Colors.deepOrange.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10
                )
              ]
            ),
            child: ListTile(
              title: const Text('Name'),
              subtitle: const Text('Bucky The Bronco'),
              leading: Icon(CupertinoIcons.person),
              trailing: Icon(Icons.arrow_forward, color: Colors.grey),
              tileColor: Colors.white,
            )
          )
        ],
      ),
      )
    );
  }
}
