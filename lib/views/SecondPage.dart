import 'package:conselec/views/connexion.dart';
import 'package:conselec/views/login.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image(
                height: 300,
                width: 275,
                image: AssetImage("lib/assets/images/connexion.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Optimisez votre consommation d'électricité avec Conselec",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center, // Center-align the text
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent, // Button background color
                    ),
                    onPressed: () {
                      print('se connecter');
                      Navigator.push(
                        context,
                       // MaterialPageRoute(builder: (context) => Connection()),
                      PageRouteBuilder(
                        pageBuilder:( context,animation,secondaryanimation)
                        {
                          return Connection();
                        },
                        transitionsBuilder: (context,animation,secondaryanimation,child)
                        {
                          return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(1.0, 0.0), // Début de l'animation (hors de l'écran à droite)
          end: Offset.zero, // Fin de l'animation (position finale)
        ).animate(animation),
        child: child,);
                        
                        },
                        transitionDuration: Duration(milliseconds: 200)
                      )
                      );
                      print("hello world");
                    },
                    child: Text(
                      'Connexion',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 20), // Adjust spacing between the buttons
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent, // Button background color
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>login())

                      );
                      // Add the navigation or action for the Inscription button here
                    },
                    child: Text(
                      "Inscription",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
