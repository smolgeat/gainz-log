

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gainz Log',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes:{
        '/':(context) =>HomeScreen(),
        
      }
    );
  }
}


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
    
    body: ListView(

      children: <Widget>[
        ListTile(
           onTap: () {
          // Go to programs menu
        },
          leading: Icon(Icons.assignment),
          title: Text('Programs'),

        ),
        ListTile(
           onTap: () {
          // go to Exercises menu
        },
          leading: Icon(Icons.fitness_center),
          title:Text('Exercises'),
          ),
        ListTile( 
           onTap: () {
          // go to log menu
        },
          leading: Icon(Icons.book),
          title: Text('Log')

        ),
        ListTile( 
          onTap: () {
          // Go to summary statistics menu
        },
          leading: Icon(Icons.assessment),
          title:Text('Stats')
          
        ),

      ],

    ),
    floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('New Workout'),
        icon: Icon(Icons.edit),
        backgroundColor: Colors.blueGrey,
      ),
       
    );
  } 
}

/* Programs Menu 
*/
/* Log
*/
/*
    Stats 
*/
