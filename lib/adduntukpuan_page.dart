import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/widgets/navbar.dart';
import 'package:tumpuan/widgets/regularbackbtn.dart';
import 'package:tumpuan/widgets/regularbtn.dart';
import 'package:tumpuan/widgets/submitbtn.dart';
import 'package:tumpuan/widgets/textfields.dart';
import 'package:tumpuan/widgets/textfieldsbtn.dart';
import 'package:tumpuan/widgets/textfieldslead.dart';
import 'package:flutter_quill/flutter_quill.dart';


class AddUntukPuan extends StatelessWidget{
  AddUntukPuan({Key? key}) : super(key: key);
  final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
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
                                      'Add Untuk Puan',
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
                          RegularButton(onPressed: (){}, buttonLabel: 'Add Untuk Suara Puan'),
                          SizedBox(height: 15,),
                          SingleChildScrollView(
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      TextFields(textFieldLabel: 'Nama Layanan',),
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                      TextFields(textFieldLabel: 'No Telephone'),
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    children: [
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                      TextFields(textFieldLabel: 'No Telephone'),
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    children: [
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  TextFieldsBtn(),
                                  SizedBox(width: 15,),
                                  TextFieldsBtn(),
                                  SizedBox(width: 15,),
                                  TextFieldsBtn(),
                                ],
                              ),
                              QuillEditor.basic(
                                configurations: QuillEditorConfigurations(
                                  controller: _controller,
                                  readOnly: false,
                                  sharedConfigurations: const QuillSharedConfigurations(
                                    locale: Locale('de'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          )
                        ],
                      ),
                    ),
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}