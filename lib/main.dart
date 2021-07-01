import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('i am Rich'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: DiamondBtn(),
      ),
    ),
  );
}

class DiamondBtn extends StatefulWidget {
  @override
  _DiamondBtnState createState() => _DiamondBtnState();
}

class _DiamondBtnState extends State<DiamondBtn> {
  @override
  var sentence = "i'm happy";
  int count = 1;

  void changeSentence() {
    setState(() {
      if (count == 1) {
        sentence = "i'm rich";
        count = 0;
      } else {
        sentence = "i'm healthy";
        count = 1;
      }
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        FlatButton(
          onPressed: () {
            changeSentence();
          },
          child: Stack(children: <Widget>[
            Image(image: AssetImage('images/diamond.png')),
            Center(child: Text(sentence, style: TextStyle(height: 5, fontSize: 50),)),
          ]),
        )
      ],
    );
  }
}

