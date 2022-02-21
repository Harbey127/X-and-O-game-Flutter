import 'package:flutter/material.dart';

import 'game.dart';


class MainScreen extends StatelessWidget {

  final double delay;
  final Widget child;

  const MainScreen({Key key, this.delay, this.child}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blueGrey, Colors.lightBlueAccent]),
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    "X",
                    textAlign: TextAlign.left,

                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none
                    ),
                  ),
                SizedBox(height: 30,),
                Text(
                  "and",
                  textAlign: TextAlign.left,

                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "O",
                  textAlign: TextAlign.left,

                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,

                        offset: const Offset(
                          1.0,
                          3.0,

                        ),
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                      ), //BoxSha
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(500)
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Text("Single Player",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,

                          offset: const Offset(
                            1.0,
                            3.0,

                          ),
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                        ), //BoxSha
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(500)
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Text("With A Friend",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
