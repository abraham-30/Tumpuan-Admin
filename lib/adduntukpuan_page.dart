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
  final TextEditingController namaLayananController = TextEditingController();
  final TextEditingController nomorTeleponController = TextEditingController();
  final TextEditingController websiteController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
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
                          RegularButton(onPressed: (){}, buttonLabel: 'Add Untuk Puan'),
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
                                      TextFields(textFieldLabel: 'Nama Layanan', controller: namaLayananController, validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'test';
                                  }
                                  return null;
                                },),
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                      TextFields(textFieldLabel: 'No Telephone', controller: nomorTeleponController, validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'test';
                                  }
                                  return null;
                                },),
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    children: [
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                      TextFieldsLead(),
                                      TextFields(textFieldLabel: 'Website', controller: websiteController, validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'test';
                                  }
                                  return null;
                                },),
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
                                  TextFieldsBtn(buttonLabel: 'Time Open', buttonIcon: Icons.access_time_outlined),
                                  SizedBox(width: 15,),
                                  TextFieldsBtn(buttonLabel: 'TIme Closed', buttonIcon: Icons.access_time_outlined,),
                                  SizedBox(width: 15,),
                                  TextFieldsBtn(buttonLabel: 'Foto', buttonIcon: Icons.edit),
                                ],
                              ),
                              SizedBox(height: 15,),
                              QuillToolbar.simple(
                              configurations: QuillSimpleToolbarConfigurations(
                                controller: _controller,
                                sharedConfigurations: const QuillSharedConfigurations(
                                  locale: Locale('de'),
                                ),
                              ),
                              ),
                              // Expanded(
                                // child: 
                              Container(
                                height: 200,
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
                              // ),
                              SizedBox(height: 15,),
                              SubmitButton(onPressed: (){}),
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
      // )
    );
  }
}