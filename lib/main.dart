import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatelessWidget {
  // const BallPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Ask Me Anything"),
      ),
      body: Ball(

      ),
    );
  }
}


class Ball extends StatefulWidget {
  // const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void ballClicked(){
  setState(() {
    ballNumber = Random().nextInt(5) + 1;
    print("$ballNumber");
  });
 }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MaterialButton(
            onPressed: (){
              ballClicked();
            },
            child: Image.asset(
              "images/ball$ballNumber.png",
            ),
          )
        ],
      ),
    );
  }
}
