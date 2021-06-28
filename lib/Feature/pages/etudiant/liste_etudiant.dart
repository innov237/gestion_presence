import 'package:flutter/material.dart';
import 'package:projettutore/Feature/pages/widget/buildFormInput.dart';

class BuildListeEdutiant extends StatefulWidget {
  @override
  _BuildListeEdutiantState createState() => _BuildListeEdutiantState();
}

class _BuildListeEdutiantState extends State<BuildListeEdutiant> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 300.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 500.0,
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enregistrer un Etudiant",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    BuildFormInput(
                      placeholder: "Nom Edutiant",
                      controller: null,
                    ),
                    BuildFormInput(
                      placeholder: "Prénom Edutiant",
                      controller: null,
                    ),
                    BuildFormInput(
                      placeholder: "Filière",
                      controller: null,
                    ),
                    BuildFormInput(
                      placeholder: "Spécialité",
                      controller: null,
                    ),
                    BuildFormInput(
                      placeholder: "Niveau",
                      controller: null,
                    ),
                    BuildFormInput(
                      placeholder: "Email",
                      controller: null,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () => null,
                      child: Text("Enregistrer"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "Liste des Etudiants",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // builListHeader(),
                    SizedBox(
                      height: 10.0,
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
          )
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
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }

  Widget builListHeader() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nom Etudiant",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          Text(
            "Prénom Etudiant",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          Text(
            "Filière",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          Text(
            "Spécialité",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          Text(
            "Niveau",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          Text(
            "Email",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
