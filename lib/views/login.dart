//import 'dart:js';

import 'package:conselec/views/SecondPage.dart';
import 'package:conselec/views/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:conselec/viewModel/registerUser.dart';
class login extends StatelessWidget {
   login({super.key});
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _EmailController=TextEditingController();
  final TextEditingController _NumController=TextEditingController();
  final TextEditingController _PasswordController=TextEditingController();
  Authregister _auth = Authregister();
  


  @override
  Widget build(BuildContext context) {
  
    return Scaffold
    (
      appBar: AppBar(automaticallyImplyLeading: true,
      backgroundColor: Colors.blue,),
     body: Stack(
      children: 
      [
        Container
        (
          
          width: 500,
          height: 410,
          decoration: BoxDecoration
          (
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(80),  
              bottomRight: Radius.circular(80))
          ),
        ),
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          Align(
            alignment: Alignment.center,
            child: Container
            (
            width: 300,
          height: 400,
          
          decoration: BoxDecoration
          (
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow:
                [
                      BoxShadow
                      (
                        color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre avec opacité
                        spreadRadius: 5, // Rayon de diffusion de l'ombre
                        blurRadius: 7, // Flou de l'ombre
                        offset: Offset(0, 3), // Décalage de l'ombre en x et y
                      ),
                ],
          ),
          child: Column
          (
            children: 
            [
                Padding(padding: EdgeInsets.only(top: 40,bottom: 20),
                child: Text("S'inscrire",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),),

              Padding(padding: EdgeInsets.all(10),
              child: TextField
              (
                 controller:_nameController,
                
                decoration: InputDecoration
                (
                  icon: Icon(Icons.person),
                  hintText: ' Nom et Prenom'
                ),
                onChanged:(value) {
                  
                },
                
              ),),
              ///// pour le prenom
              Padding(padding: EdgeInsets.all(10),
              child: TextField
              (
                 controller:_EmailController,
                decoration: InputDecoration
                (
                  icon: Icon(Icons.mail),
                  hintText: 'Email'
                ),
                onChanged:(value) {
                  
                },
                
              ),),
              /////
              ///pour le numero de telephone 
              Padding(padding: EdgeInsets.all(10),
              child: TextField
              (
                 controller:_NumController,
                decoration: InputDecoration
                (
                  icon: Icon(Icons.numbers),
                  hintText: 'Numéro de telephone'
                ),
                onChanged:(value) {
                  
                },
                
              ),),
              ////////////////////
               Padding(padding: EdgeInsets.all(10),
              child: TextField
              (
                 controller:_PasswordController,
                decoration: InputDecoration
                (
                  icon: Icon(Icons.lock),
                  hintText: 'Mot de passe '
                ),
                onChanged:(value) {
                  
                },
                
              ),),
              

            ],
          ),
          

        )
        ),
       Padding(padding: EdgeInsets.only(top: 75),
       child:  Align(
          alignment: Alignment.bottomCenter,
          child: TextButton(
                style: TextButton.styleFrom     (backgroundColor: Colors.blue),
                onPressed: ()
                 async {
                  /////definir le boutton 
                try {
                    await _auth.registerUser(
                    _nameController.text,
                     _EmailController.text,
                      _NumController.text,
                      _PasswordController.text,
                      context,
                    );
                     Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context)=>MainPage()));
                  } catch (e) {
                    print('Erreur lors de l\'inscription : $e');
                  }
                },
                 
                   //// definir la creation de l'utilisateur
                  

                 
              //  await _auth.registerUser(_nameController as String,_EmailController as String,_NumController as String,_PasswordController as String,context);

                 
                child: Padding
                (
                  padding: EdgeInsets.only(right: 55,left: 55),
                child:Text(("Suivant"),style: TextStyle(fontSize: 20,color: Colors.white),
                ),),),
        ),)
        ],
       )
      ],
     ),
    );
  }
}