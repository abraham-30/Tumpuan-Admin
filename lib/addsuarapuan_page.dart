import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/widgets/submitbtn.dart';
import 'package:tumpuan/widgets/navbar.dart';
import 'package:tumpuan/widgets/regularbackbtn.dart';
import 'package:tumpuan/widgets/regularbtn.dart';
import 'package:tumpuan/widgets/textfields.dart';
import 'package:tumpuan/widgets/textfieldsbtn.dart';
import 'package:flutter_quill/flutter_quill.dart';

class AddSuaraPuan extends StatelessWidget{
  AddSuaraPuan({Key? key}) : super(key: key);
  final QuillController _controller = QuillController.basic();
  final TextEditingController judulController = TextEditingController();
  final TextEditingController kategoriController = TextEditingController();

  
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
                                    'Add Suara Puan',
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
                        RegularButton(onPressed: (){}, buttonLabel: 'Add Suara Puan',)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          TextFields(textFieldLabel: 'Judul', controller: judulController, validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'test';
                                  }
                                  return null;
                                },),
                          SizedBox(height: 15,),
                          TextFields(textFieldLabel: 'Kategori', controller: kategoriController, validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'test';
                                  }
                                  return null;
                                },),
                        ],
                      ),
                      SizedBox(width: 15,),
                      TextFieldsBtn(buttonLabel: 'Assets', buttonIcon: Icons.edit,),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: QuillToolbar.simple(
                      configurations: QuillSimpleToolbarConfigurations(
                        controller: _controller,
                        sharedConfigurations: const QuillSharedConfigurations(
                          locale: Locale('de'),
                        ),
                      ),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Container(
                      height: 300,
                      child: QuillEditor.basic(
                        configurations: QuillEditorConfigurations(
                          controller: _controller,
                          readOnly: false,
                          sharedConfigurations: const QuillSharedConfigurations(
                            locale: Locale('de'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SubmitButton(onPressed: (){}),  
                    )
                  ),
                ]
              ),
            )
          ]
        )
      )
    );
  }
}