import 'package:flutter/material.dart';
import 'package:tumpuan/addkategorisuara_page.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/widgets/admin_table.dart';
import 'package:tumpuan/widgets/navbar.dart';
import 'package:tumpuan/widgets/regularbtn.dart';

class KategoriSuaraPuan extends StatelessWidget{
    const KategoriSuaraPuan({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(left: 25, top: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                'Kategori Suara Puan',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Pallete.whiteColor,
                                ),
                                ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        RegularButton(onPressed: (){
                          Navigator.push( 
                          context, 
                          MaterialPageRoute(builder: (context) => const AddKategoriSuaraPuan())); 
                        }, buttonLabel: 'Add Kategori Suara Puan',)
                      ],
                    ),
                  ),
                  AdminTable(tableName: 'Kategori Suara Puan'),
                ]
              ),
            )
          ]
        )
      )
    );
  }
}