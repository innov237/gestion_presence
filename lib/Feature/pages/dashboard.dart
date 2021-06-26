import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  @override
  _DashBoardViewState createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  var student = [
    {
      "nom": "Tuedjo",
      "prenom": "jaelle",
      "email": "etuedjo9@gmail.com",
      "statut": "presente",
      "justifier": "non justifié",
    },
    {
      "nom": "Tuedjo ",
      "prenom": "danielle",
      "email": "etuedjo9@gmail.com",
      "statut": "presente",
      "justifier": " cas de maladi",
    },
    {
      "nom": "Tuedjo",
      "prenom": "Emmanulle",
      "email": "etuedjo9@gmail.com",
      "statut": "Absente",
      "justifier": "non justifié",
    },
    {
      "nom": "Tuedjo emmanu",
      "prenom": "Emmanulle",
      "email": "etuedjo9@gmail.com",
      "statut": "presente",
      "justifier": "cas de maladi",
    },
    {
      "nom": "Tuedjo ",
      "prenom": "Emmanulle",
      "email": "etuedjo9@gmail.com",
      "statut": "Absente",
      "justifier": " cas de maladi",
    },
    {
      "nom": "o anuelle",
      "prenom": "Emmanulle",
      "email": "etuedjo9@gmail.com",
      "statut": "presente",
      "justifier": "cas de maladi",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fiche de presence du dernier cours",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 400.0,
              color: Colors.red,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: student.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildListeOption(student[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListeOption(data) {
    return Column(
      children: [
        Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data["nom"].toString() + " " + ["prenom"].toString()),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      data["statut"].toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Text(data["email"]),
                Text(data["justifier"]),
              ],
            ),
          ),
        ),
        Divider(
          height: 5,
        ),
      ],
    );
  }
}
