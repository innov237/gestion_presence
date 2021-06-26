import 'package:flutter/material.dart';
import 'package:projettutore/Feature/pages/dashboard.dart';
import 'package:projettutore/Feature/pages/etudiant/etudiant.dart';
import 'package:projettutore/Feature/pages/etudiant/fiche_presence.dart';
import 'package:projettutore/Feature/pages/etudiant/liste_etudiant.dart';

import 'package:projettutore/Feature/pages/etudiant/listepresence.dart';

class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  int activeIndex;

  setActiveTab(index) {
    setState(() {
      activeIndex = index;
    });
  }

  List pageView = [
    DashBoardView(),
    BuildListeEdutiant(),
    FichePresencePage(),
    Listepresence(),
  ];

  @override
  void initState() {
    super.initState();
    activeIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF1F2F4),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/logo.jpg"),
                          radius: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: ()=> setActiveTab(0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                            topLeft: Radius.circular(80),
                          ),
                          child: Container(
                            height: 30.0,
                            width: 200,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "Dashboard",
                                style: TextStyle(
                                  color: Color(0xFF2C3F86),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 27.0,
                      ),
                      InkWell(
                        onTap: () => setActiveTab(1),
                        child: Text(
                          "Etudiants",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      InkWell(
                        onTap: () => setActiveTab(2),
                        child: Text(
                          "Fiche de presence",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      InkWell(
                        onTap: () => setActiveTab(3),
                        child: Text(
                          "Mon compte",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      color: Colors.white70,
                      width: MediaQuery.of(context).size.width - 200,
                      child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Welcome to iusty platform",
                                ),
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  height: 40,
                                  child: Container(
                                    color: Color(0xFFF1F2F4),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Text(
                                              "Search",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.3),
                                                  fontSize: 12.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 350,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Container(
                                              height: 40,
                                              width: 70,
                                              color: Colors.blue,
                                              child: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Container(
                                height: 40,
                                width: 2.0,
                                color: Colors.black.withOpacity(0.2),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage:
                                    AssetImage("assets/images/avatar.png"),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: pageView[activeIndex],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
