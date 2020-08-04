import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'video.dart';



MyApp()  {
  AudioPlayer a= AudioPlayer();
  var player = AudioCache(fixedPlayer: a);
  ontoast(){
    Fluttertoast.showToast(
        msg: "Great Choice!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.lightGreen.shade400,
        textColor: Colors.black,
        fontSize: 16.0
    );
              }
  var mybody=Container(
    alignment: Alignment.center,
    color: Colors.lightGreen.shade200,
    height: double.infinity,
    width: double.infinity,
    margin: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        Container(height: 50,),
        Text(
        'Sound of rainfall to relax mind',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold,
         color: Colors.green.shade900,
         fontSize: 20.0),
),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[RaisedButton(
                      onPressed:(){
         
    // call this method when desired
    player.play('rain-01.wav');},
                      child: Container(
              width: 50,
              height:50,
              decoration: BoxDecoration(
                image: const DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/aditi1819/flutter_practice/master/Screenshot%20(239).png'),
          fit: BoxFit.cover,
         ),
              ),
            
            )
          ),
          RaisedButton(
                      onPressed:()  async{ 
                          
                 int result = await a.pause();
                 return result;
                 },
                      child: Container(
              width: 50,
              height:50,
              decoration: BoxDecoration(
                image: const DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/aditi1819/flutter_practice/master/17309095.jpg'),
          fit: BoxFit.cover,
         ),
              ),
            
            )
          ),
          RaisedButton(
                      onPressed:()async{int result = await a.stop();
                 return result; },
                      child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: const DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/aditi1819/flutter_practice/master/Screenshot%20(242).png'),
          fit: BoxFit.cover,
         ),
              ),
            
            )
          ),],),
          Container(
            height: 100,
          ),
          Container(
            height: 20,
            child: Text(
        'Cathedral Ambiance to focus  ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold,
         color: Colors.green.shade900,
         fontSize: 20.0),
),
          ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[RaisedButton(
                      onPressed:() async{ 
                        
                       
     await a.play("https://github.com/aditi1819/flutter_practice/raw/master/2020-06-18_-_Cathedral_Ambience_-_www.FesliyanStudios.com_David_Renda.mp3");
                      
  
                      },
                      child: Container(
              width: 50,
              height:50,
              decoration: BoxDecoration(
                image: const DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/aditi1819/flutter_practice/master/Screenshot%20(239).png'),
          fit: BoxFit.cover,
         ),
              ),
            
            )
          ),
          RaisedButton(
                      onPressed:()async{ 
                        
                            await a.pause();
  
  
                      },
                      child: Container(
              width: 50,
              height:50,
              decoration: BoxDecoration(
                image: const DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/aditi1819/flutter_practice/master/17309095.jpg'),
          fit: BoxFit.cover,
         ),
              ),
            
            )
          ),
          RaisedButton(
                      onPressed:()async{ 
                       
                        await a.stop();
    
  },
                      child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: const DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/aditi1819/flutter_practice/master/Screenshot%20(242).png'),
          fit: BoxFit.cover,
         ),
              ),
            
            )
          ),],),
          Container(
            height: 100,
          ),
          Text(
        'Yoga Video to relax body',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold,
         color: Colors.green.shade900,
         fontSize: 20.0),
),
          Container(
            height: 200,
            width: 300,
          child: VideoApp(),
        ),
      ]
    ),
  );
  var myicon= Icon(Icons.favorite,color: Colors.redAccent.shade200,);
  var myicon2= Icon(Icons.account_box);
  var button2= IconButton(icon: myicon2, onPressed: ontoast);
  var button1= IconButton(icon: myicon, onPressed: ontoast);
  
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Peace-abate Media Player"),
        backgroundColor: Colors.green.shade800,
        actions: <Widget>[button1,button2],
      ),
      body: mybody,
    ),
    debugShowCheckedModeBanner: false,
  );
}