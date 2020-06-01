

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
        '/ProgramMenu':(context) =>ProgramMenu(),
        '/StatsMenu':(context) => StatsMenu(),
        '/ExerciseMenu':(context)=>ExerciseMenu(),
        '/Log':(context)=> LogMenu(),
        '/Export':(context)=> ExportMenu(),
        
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
          Navigator.pushNamed(context, '/ProgramMenu');
        },
          leading: Icon(Icons.assignment),
          title: Text('Programs'),

        ),
        ListTile(
           onTap: () {
          // go to Exercises menu
          Navigator.pushNamed(context, '/ExerciseMenu');
        },
          leading: Icon(Icons.fitness_center),
          title:Text('Exercises'),
          ),
        ListTile( 
           onTap: () {
          // go to log menu
          Navigator.pushNamed(context, '/Log');
        },
          leading: Icon(Icons.book),
          title: Text('Log')

        ),
        ListTile( 
          onTap: () {
          // Go to summary statistics menu
          Navigator.pushNamed(context, '/StatsMenu');
        },
          leading: Icon(Icons.assessment),
          title:Text('Stats')
          
        ),
        ListTile( 
          onTap: () {
          // Go to summary statistics menu
          Navigator.pushNamed(context, '/Export');
        },
          leading: Icon(Icons.share),
          title:Text('Export')
          
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



class ProgramMenu extends StatelessWidget{
  /* Programs Menu  
     Create New program
     Update Current program

  */
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
      title:Text('Program Menu'),
        ),
      body:ListView(
        children: <Widget>[
          ListTile(
            onTap:(){

            },
            leading:Icon(Icons.edit),
            title:Text('Create Program')
          ),
          ListTile(
            onTap:(){

            } ,
            leading:Icon(Icons.library_books),
            title:Text('View Programs')
            ),
          ListTile(
            onTap:(){

            } ,
            leading:Icon(Icons.build),
            title:Text('Update Program')
            ),
          ListTile(
            onTap:(){

            },
            leading:Icon(Icons.highlight_off),
            title:Text('Delete Program'),
          ),
        ],
        )

    );
  }

}
// Default Exercies
List<String> exercises= ['Squat','Bench press','Deadlift','Overhead press','Bicep Curl','Flys','SLDL']; 
class ExerciseMenu extends StatelessWidget{
  /* Exercise 
     Create New program
     Update Current program
     
  */
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text('Exercises'),
        ),
      body:ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${exercises[index]}'),
    );
  },
),
    floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('New Exercise'),
        icon: Icon(Icons.edit),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }

}

class LogMenu extends StatelessWidget{
  /*
    Workout log
     
  */
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text('Log'),
        ),

    );
  }

}
class StatsMenu extends StatelessWidget{
/*
    Stats 
*/
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text('Stats'),
        ),

    );
  }

}

class ExportMenu extends StatelessWidget{
/*
    Stats 
*/
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text('Export'),
        ),
      

    );
  }

}

