import 'package:flutter/material.dart';
import 'package:x_or_o/pages/x.dart';


class PlayerDetails extends StatefulWidget {
  const PlayerDetails({Key key}) : super(key: key);

  @override
  _PlayerDetailsState createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails> {

  int x=0;
  String result;
  String groupValue = 'X';
  void setGroupvalue(value) {
    setState(() {
      groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: Column(
          children: [
            Text(
              "Choose your shape",
              textAlign: TextAlign.left,

              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: RadialGradient(
                      radius: 0.18,
                      colors: [Colors.transparent, Colors.blue[900]],
                      stops: [1, 1],
                    ),
                  ),
                ),
                X(100, 20),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Radio(

                ),
                Radio(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
