import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';

class AddQuestionButton extends StatelessWidget{
  const AddQuestionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Pallete.pink3,
      textColor: Pallete.whiteColor,
      child: Icon(
        Icons.add,
        // size: 24,
      ),
      // padding: EdgeInsets.all(16),
      shape: CircleBorder(),
      elevation: 0,
    );
  }
}