import 'package:flutter/material.dart';
import 'package:projettutore/Feature/pages/etudiant/acceuil.dart';
import 'package:projettutore/Feature/pages/widget/buildFormInput.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  login() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Acceuil(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            width: 500.0,
            height: 300.0,
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    BuildFormInput(
                      placeholder: "Nom utilisateur",
                      controller: null,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    BuildFormInput(
                      placeholder: "Mot de passe",
                      controller: null,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () => login(),
                      child: Text("Connexion"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
