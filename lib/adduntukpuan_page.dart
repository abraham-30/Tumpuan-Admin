import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/widgets/navbar.dart';
import 'package:tumpuan/widgets/regularbackbtn.dart';
import 'package:tumpuan/widgets/regularbtn.dart';
import 'package:tumpuan/widgets/submitbtn.dart';
import 'package:tumpuan/widgets/textfields.dart';

class AddUntukPuan extends StatelessWidget{
  const AddUntukPuan({Key? key}) : super(key: key);
  
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
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    // padding: EdgeInsets.only(left: 25, top: 25, right: 25),
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children:[
                            RegularBackButton(onPressed: (){}),
                            const SizedBox(width: 15,),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                                color: Pallete.pink4,
                              ),
                              child: const SizedBox(
                                width: 175,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    'Kategori Suara Puan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Pallete.whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                        ),
                        SizedBox(height: 15,),
                        RegularButton(onPressed: (){}, buttonLabel: 'Add Kategori Suara Puan'),
                        SizedBox(height: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextFields(textFieldLabel: 'ID Kategori',),
                            SizedBox(height: 15,),
                            TextFields(textFieldLabel: 'Nama Kategori',),
                            SizedBox(height: 15,),
                            SubmitButton(onPressed: (){}),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]
              )
            )
          ]
        )
      )
    );
  }
}