import 'package:conselec/viewModel/verifyNumber.dart';
import 'package:conselec/views/SecondPage.dart';
import 'package:conselec/views/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
class  Connection extends StatelessWidget {
   Connection({super.key});
  TextEditingController _checkNumberController=TextEditingController();
  verifyNumber _authVerify=verifyNumber();

  @override
  Widget build(BuildContext context) {
  final w=MediaQuery.of(context).size;
  final heig =w.width;    var controller;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            //////importer l'image 
           Padding(padding: EdgeInsets.only(top: 20,left: 20),
           child:  Image(
            height: 400,
            width: 400,
            image: AssetImage("lib/assets/images/conection1.jpg")
            ),),
            /////le text de connexion 
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Connexion",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Saisissez votre numero de telephone",style: TextStyle(fontSize: 17,color: Colors.grey),),
            ),
            ///////////////le champ d'entrée avec les indicatifs 
            ///
            Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.DROPDOWN,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Colors.black),
                initialValue: PhoneNumber(isoCode: "BF"),
                textFieldController: controller,
                formatInput: false,
                keyboardType:
                    TextInputType.numberWithOptions(signed: true, decimal: true),
               // inputBorder: OutlineInputBorder(),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                  _checkNumberController=number as TextEditingController;
                 // print("$numero");
                },
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.all(15),
              child: TextButton(
                style: TextButton.styleFrom     (backgroundColor: Colors.blue),
                onPressed: ()
                 async {
                   await _authVerify.verifying(_checkNumberController.text);
                  Navigator.push(
                   
                    context,
                   MaterialPageRoute(builder: (context)=>MainPage()));
                 }, 
                child: Padding
                (
                  padding: EdgeInsets.only(right: 80,left: 80),
                child:Text(("Suivant"),style: TextStyle(fontSize: 17,color: Colors.white),
                ),),)
                )
            ],
          ),
        ),////////
          ],),
      ),
    );
  }
}
