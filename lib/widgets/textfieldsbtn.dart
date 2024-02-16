import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';

class TextFieldsBtn extends StatelessWidget{
  const TextFieldsBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 380
          ),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Test',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
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
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                ),
              ],
            ),
          ),
        Material(
          type: MaterialType.transparency, 
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Pallete.blackColor, width: 2),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: (){},
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                    Icons.send,
                    color: Pallete.blackColor,
                  ),
                )
            ),
          ),
        ),
      ],
    );
  }
}