import 'package:flutter/material.dart';

class Etudiant extends StatefulWidget {
  @override
  _EtudiantState createState() => _EtudiantState();
}

class _EtudiantState extends State<Etudiant> {
   TextEditingController nom;
  TextEditingController prenom;
  TextEditingController specialite;
  TextEditingController niveau;
  
  @override
   void initState() {
    super.initState();
     nom = TextEditingController();
    prenom = TextEditingController();
    specialite = TextEditingController();

    niveau = TextEditingController();

   }
  Widget build(BuildContext context) {
    return Container(
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white70,
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                 ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 40.0,
                            color: Color(0xFFF1F2F4),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: TextField(
                                controller:nom,
                                decoration:
                                    InputDecoration(labelText: "Votre nom"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                         ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 40.0,
                            color: Color(0xFFF1F2F4),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: TextField(
                                controller: prenom,
                                decoration:
                                    InputDecoration(labelText: "Votre Prenom"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                         ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 40.0,
                            color: Color(0xFFF1F2F4),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: TextField(
                                controller:specialite,
                                decoration:
                                    InputDecoration(labelText: "Votre specialité"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                         ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 40.0,
                            color: Color(0xFFF1F2F4),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: TextField(
                                controller:niveau,
                                decoration:
                                    InputDecoration(labelText: "Votre niveau"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                         ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 40.0,
                              child: RaisedButton(
                                  onPressed: () {
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: Text(
                                      "Enregister",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  color: Color(0xFF2C3F86)),
                            ),
                          ),
              ],
            ),
          ),
          Container(
              color: Colors.white70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Text("Liste des etudiants"),
                  SizedBox(height: 20,),
                  Text("Tuedjo emmanuelle"),

              ],),
            )
        ],
      ),
    );
  }
}
