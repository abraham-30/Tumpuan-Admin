import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';

class LoginTxtFields extends StatelessWidget{
  const LoginTxtFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 407,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(14),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.blackColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.pink4,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
