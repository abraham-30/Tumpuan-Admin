import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';

class TextFieldsLead extends StatefulWidget{
  @override
  TextFieldsLeadState createState() => TextFieldsLeadState();
}

class TextFieldsLeadState extends State<TextFieldsLead>{
  // TextFieldsLeadState({Key? key}) : super(key: key);
  String dropdownValue = 'Test1';

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 407
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
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Pallete.blackColor
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: DropdownButton(
                      value: dropdownValue,
                      icon: const Icon(
                      Icons.arrow_drop_down_circle_rounded,
                      color: Pallete.blackColor,
                      ),
                      isExpanded: true,
                      underline: Container(color: Colors.transparent),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue =  newValue!;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          value: 'Test1',
                          child: Text('Test1'),
                        ),
                        DropdownMenuItem(
                          value: 'Test2',
                          child: Text('Test2'),
                        ),
                        DropdownMenuItem(
                          value: 'Test3',
                          child: Text('Test3'),
                        ),
                      ],
                    ) 
                  )
                )
              ],
            ),
          ),
      ],
    );
  }
}