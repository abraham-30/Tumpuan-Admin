import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';

class TextFields extends StatelessWidget{
  TextFields({Key? key, required this.textFieldLabel, required this.controller, required this.validator}) : super(key: key);
  final String textFieldLabel;
  final TextEditingController controller;
  String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 407
      ),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$textFieldLabel',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              validator: validator,
              controller: controller,
              decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(19),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Pallete.blackColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  // color: Pallete.pink4,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ),
          ],
        ),
      );
  }
}