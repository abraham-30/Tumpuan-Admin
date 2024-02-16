import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/widgets/navbar.dart';
import 'package:tumpuan/widgets/textfields.dart';
import 'package:tumpuan/widgets/regularbtn.dart';
import 'package:tumpuan/widgets/regularbackbtn.dart';

class EditProfile extends StatelessWidget{
    const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: NavBar()
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularBackButton(onPressed: (){}),
                    SizedBox(height: 15,),
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 72,
                        backgroundColor: Pallete.pink4,
                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                TextFields(textFieldLabel: 'Nama',),
                                SizedBox(height: 15,),
                                TextFields(textFieldLabel: 'Email',),
                                SizedBox(height: 15,),
                                TextFields(textFieldLabel: 'Username',),
                                SizedBox(height: 15,),
                                Container(
                                  child: Row(
                                    children: [
                                      RegularButton(onPressed: (){}, buttonLabel: ''),
                                      SizedBox(width: 15,),
                                      RegularButton(onPressed: (){}, buttonLabel: ''),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextFields(textFieldLabel: 'Birthdate',),
                                SizedBox(height: 15,),
                                TextFields(textFieldLabel: 'Role',),
                                SizedBox(height: 15,),
                                TextFields(textFieldLabel: 'Telephone',),
                                SizedBox(height: 15,),
                                Container(
                                  child: Row(
                                    children: [
                                      RegularButton(onPressed: (){}, buttonLabel: ''),
                                      SizedBox(width: 15,),
                                      RegularButton(onPressed: (){}, buttonLabel: ''),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ]
                ),  
              )
            )
          ],
        ),
      ),
    );
  }
}