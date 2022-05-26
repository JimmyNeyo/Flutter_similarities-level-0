import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          title: Text("المتشابهات"),
          centerTitle: true,
          backgroundColor: Colors.purple[700],
        ),
        body: Imagepage(),
      ),
    ),
  );
}

class Imagepage extends StatefulWidget {
  Imagepage({Key? key}) : super(key: key);

  @override
  _ImagepageState createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  var photo1= 4 ;
  var photo2= 5 ;
  Widget build(BuildContext context) {
    return Column( 
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(          
                      photo1==photo2 ? 'والله وعملوها الرجاله ' :
                      'جرب تانى يا حليتها ' ,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            )),
        Row(
          children: [
            Expanded(
                flex: 1,
                child:  TextButton(
                  onPressed: () { 
                    setState(() {
                      photo1 = Random().nextInt(8)+1;
                      //photo2 = Random().nextInt(8)+1;
                    });
                    print(' كده انت ضغطت على يمين يا معلم'); },
                  child: 
                    Image.asset('images/image-$photo1.png'),
                   
                  ),
                ),
            Expanded(
                flex: 1, 
                child: TextButton(onPressed: () { 
                  setState(() {
                    photo2 = Random().nextInt(8)+1;
                   //  photo1 = Random().nextInt(8)+1;
                  });                          
                  print(' كده انت ضغطت على شمالى يا معلم'); },
                child: Image.asset('images/image-$photo2.png'))),
          ],
        ),
      ],
    );
  }
  }
