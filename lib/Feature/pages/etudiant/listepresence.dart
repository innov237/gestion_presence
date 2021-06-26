import 'package:flutter/material.dart';

class Listepresence extends StatefulWidget {
  @override
  _ListepresenceState createState() => _ListepresenceState();
}

class _ListepresenceState extends State<Listepresence> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white70,
            height: 70,
            width: MediaQuery.of(context).size.width - 210,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Tuedjo Emmanuelle",
                    ),
                    Text("etuedjo9@gmail.com"),
                  ],
                ),
                Container(
                    height: 30.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          "Present",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      color: Colors.green,
                    )),
                      Container(
                    height: 30.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          "Absent",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      color: Colors.red,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
