import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override



  Widget build(BuildContext context) {
    return Scaffold
    ( 
body: Stack(
  //mainAxisAlignment:MainAxisAlignment.center,
  ///crossAxisAlignment: CrossAxisAlignment.center,
  
  children: 
[
 
  //image: AssetImage("lib/assets/images/conection1.jpg")
  Align
  (
    alignment: Alignment.bottomCenter,
    child:  Container
   (
      //color: Colors.blue,
      width: 400,
      height: 510,
      
      decoration: BoxDecoration
      (
        color: Color.fromARGB(255, 44, 123, 188),
        borderRadius: BorderRadius.only
        (
          topLeft: Radius.circular(100)
        )
      ),
      child: Column
      (
        children: 
        [
          Padding(padding: EdgeInsets.all(20),
          child: Text("Bienvenue, Arold",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white),),),
          Center(child: Padding(padding: EdgeInsets.only(bottom: 20,right: 20,left: 20),
          child: Text("Prenez en main votre consommation electrique",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: Colors.white),),),
           ),
           Container(height: 3, width: 300,   color: Colors.white,),
           Padding(padding: EdgeInsets.all(20),
          child: Text("let's go",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),),
          //////// les differents boutons
          Padding(
             padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: 
              [
                _boutons('profile',Icons.person),
                _boutons('index',Icons.person)
              ],
            ),
          ),
           Padding(
             padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: 
              [
                _boutons('profile',Icons.person),
                _boutons('index',Icons.person)
              ],
            ),
          )

        ],
      ),
   ),
  ),
  Padding(
          padding: EdgeInsets.all(10),
        child:  Align(
            alignment: Alignment.topCenter,
            child: Image(
            height: 250,
            width: 250,
            image: AssetImage("lib/assets/images/homepage.png")),
          ),
  ),
],),

    );
  }
  ///////////definitions des widgets
    Widget _boutons( String libelle, IconData Icone) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: 130,
        height: 90,
        decoration: BoxDecoration
        (
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
           boxShadow:
                [
                      BoxShadow
                      (
                        color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
                        spreadRadius: 3, // Rayon de diffusion de l'ombre
                        blurRadius: 5, // Flou de l'ombre
                        offset: Offset(0, 3), // Décalage de l'ombre en x et y
                      ),
                ],
        ),
        child: Row(children: 
        [
          Container
          (
            margin: EdgeInsets.all(10),
            width: 35,
            height: 35,
            child:  Icon(Icone as IconData?,color: Colors.white,),
            decoration: BoxDecoration
            (
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue

            ),

          ),
         
          Text("$libelle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        ],)
        ,
      ),
    );
  }
  
}