import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/widgets/addquestionbtn.dart';
import 'package:tumpuan/widgets/navbar.dart';
import 'package:tumpuan/widgets/regularbackbtn.dart';
import 'package:tumpuan/widgets/regularbtn.dart';
import 'package:tumpuan/widgets/submitbtn.dart';
import 'package:tumpuan/widgets/textfields.dart';
import 'package:tumpuan/widgets/textfieldsbtn.dart';

class AddDailyQuiz extends StatelessWidget{
  const AddDailyQuiz({Key? key}) : super(key: key);
  
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
                                    'Daily Quiz',
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
                        RegularButton(onPressed: (){}, buttonLabel: 'Add Daily Quiz'),
                        SizedBox(height: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFields(textFieldLabel: 'Judul',),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFields(textFieldLabel: 'Question',),
                                TextFieldsBtn(),
                                TextFieldsBtn(),
                                TextFieldsBtn(),
                                TextFieldsBtn(),
                              ],
                            ),
                            AddQuestionButton(),
                          ],
                        ),
                        SizedBox(height: 15,),
                        SubmitButton(onPressed: (){}),
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