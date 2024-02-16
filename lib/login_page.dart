import "package:flutter/material.dart";
import "package:tumpuan/adddailyquiz.dart";
import "package:tumpuan/dashboard.dart";
import 'package:tumpuan/widgets/submitbtn.dart';
import 'package:tumpuan/widgets/textfields.dart';

import 'package:tumpuan/addkategoriuntuk_page.dart';
import "package:tumpuan/addsuarapuan_page.dart";
import "package:tumpuan/editprofile_page.dart";
import "package:tumpuan/suarapuan_page.dart";
import 'package:tumpuan/addmanagerole_page.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              const Image(image: ResizeImage(AssetImage('assets/images/tumpuan-logo.png'), width: 750)),
              const SizedBox(height: 14,),
              const TextFields(),
              const SizedBox(height: 10,),
              const TextFields(),
              const SizedBox(height: 18,),
              SubmitButton(onPressed: () {
                Navigator.push( 
                context, 
                MaterialPageRoute(builder: (context) => Dashboard())); 
              },),
            ],
          ),
        )
      ),

    );
  }
}