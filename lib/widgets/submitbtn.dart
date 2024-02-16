import "package:flutter/material.dart";
import 'package:tumpuan/palette/palette.dart';

class SubmitButton extends StatelessWidget{
  final VoidCallback onPressed;
  const SubmitButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Pallete.blackColor),
          fixedSize: const MaterialStatePropertyAll(Size(150, 45)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),)
        ),
        child: const Text(
          'Submit', 
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
      );
  }
}
