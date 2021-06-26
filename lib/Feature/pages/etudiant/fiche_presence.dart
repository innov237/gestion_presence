import 'package:flutter/material.dart';

class FichePresencePage extends StatefulWidget {
  @override
  _FichePresencePageState createState() => _FichePresencePageState();
}

class _FichePresencePageState extends State<FichePresencePage> {
  var listEtudiantData = [
    {
      "nom": "Tuedjo",
      "prenom": "Emmanuelle",
      "email": "etuedjo9@gmail.com",
      "filiere": "GL",
      "specialite": "Genie Logiociel",
    },
    {
      "nom": "Tadjou",
      "prenom": "Steve",
      "email": "tadjousteve@gmail.com",
      "filiere": "GL",
      "specialite": "Genie Logiociel",
    },
    {
      "nom": "Simo",
      "prenom": "Loic",
      "email": "simo@gmail.com",
      "filiere": "ISIR",
      "specialite": "Reseaux",
    },
  ];

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Fiche présence",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 210,
                    height: 500.0,
                    child: ListView.builder(
                      itemCount: listEtudiantData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return buildListContent(listEtudiantData[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListContent(listEtudiantData) {
    return Column(
      children: [
        Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  listEtudiantData['nom'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  listEtudiantData['prenom'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  listEtudiantData['filiere'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  listEtudiantData['specialite'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  listEtudiantData['email'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => null,
                          child: Text("Présent"),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => null,
                          child: Text("Absent"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
