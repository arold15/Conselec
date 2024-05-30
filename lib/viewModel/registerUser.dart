import 'package:conselec/views/mainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:conselec/views/login.dart';
import 'package:flutter/material.dart';

class Authregister
{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> registerUser
  (
    String Name,
    String Email,
    String numero,
    String Password,
    BuildContext context
  )
  async {
     try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: Email,
        password: Password,
      );
      User? user = userCredential.user;
      if (user != null) {
        
        // L'utilisateur a été créé avec succès, vous pouvez enregistrer les autres informations dans Firestore si nécessaire
        print('Utilisateur créé : ${user.uid}');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {
        print('Erreur d\'authentification : ${e.message}');
      }
    } catch (e) {
      print('Erreur principale est  :  $e');
    }
  }
}