import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';

class TextFieldsBtn extends StatelessWidget{
  const TextFieldsBtn({Key? key, required this.buttonLabel, required this.buttonIcon}) : super(key: key);
  final String buttonLabel;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 350
          ),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$buttonLabel',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
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
                padding: EdgeInsets.all(14),
                child: Icon(
                    buttonIcon,
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