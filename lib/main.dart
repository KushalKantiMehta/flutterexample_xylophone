import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  playSound(int number){
    final player =AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildcontainer({required Color color ,required int SoundNumber}){
    return Expanded(
        child: Container(
        color: color,
        width: 100,
        height: 100,
        child: MaterialButton(onPressed: (){
                playSound(SoundNumber);
        },),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             buildcontainer(color:Colors.purple,SoundNumber:7),
              buildcontainer(color:Colors.indigo,SoundNumber:6),
              buildcontainer(color:Colors.blue,SoundNumber:5),
              buildcontainer(color:Colors.green,SoundNumber:4),
              buildcontainer(color:Colors.yellow,SoundNumber:3),
              buildcontainer(color:Colors.orange,SoundNumber:2),
              buildcontainer(color:Colors.red,SoundNumber:1),



            ],
          ),
        ),
      ),
    );
  }
}

