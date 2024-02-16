import 'package:flutter/material.dart';
import 'package:tumpuan/dailyquiz_page.dart';
import 'package:tumpuan/dashboard.dart';
import 'package:tumpuan/editprofile_page.dart';
import 'package:tumpuan/kategorisuarapuan_page.dart';
import 'package:tumpuan/kategoriuntukpuan_page.dart';
import 'package:tumpuan/managerole_page.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/suarapuan_page.dart';
import 'package:tumpuan/untukpuan_page.dart';
import 'package:tumpuan/widgets/navbar_button.dart';

class NavBar extends StatelessWidget{
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                  radius: 32,
                  backgroundColor: Pallete.pink4,
                  ),
                  const Text(
                    'Miko',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    color: Pallete.blackColor,
                    // tooltip: '',
                    onPressed: () {
                      Navigator.push( 
                      context, 
                      MaterialPageRoute(builder: (context) => const EditProfile())); 
                    },
                  ),
                ]
              )
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {
                    Navigator.push( 
                    context, 
                    MaterialPageRoute(builder: (context) => Dashboard())); 
                  }, buttonLabel: 'Dashboard', buttonIcon: const Icon(Icons.home_rounded),),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {
                    Navigator.push( 
                    context, 
                    MaterialPageRoute(builder: (context) => const ManageRole())); 
                  }, buttonLabel: 'Manage Role', buttonIcon: const Icon(Icons.people_outline_outlined),),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {
                    Navigator.push( 
                    context, 
                    MaterialPageRoute(builder: (context) => const SuaraPuan())); 
                  }, buttonLabel: 'Suara Puan', buttonIcon: const Icon(Icons.transcribe),),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {
                    Navigator.push( 
                    context, 
                    MaterialPageRoute(builder: (context) => const KategoriSuaraPuan())); 
                  }, buttonLabel: 'Kategori Suara Puan', buttonIcon: const Icon(Icons.transcribe),),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {
                    Navigator.push( 
                    context, 
                    MaterialPageRoute(builder: (context) => const DailyQuiz())); 
                  }, buttonLabel: 'Daily Quiz', buttonIcon: const Icon(Icons.calendar_month),),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {
                      Navigator.push( 
                    context, 
                    MaterialPageRoute(builder: (context) => const UntukPuan())); 
                  }, buttonLabel: 'Untuk Puan', buttonIcon: const Icon(Icons.newspaper),),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {
                    Navigator.push( 
                    context, 
                    MaterialPageRoute(builder: (context) => const KategoriUntukPuan())); 
                  }, buttonLabel: 'Kategori Untuk Puan', buttonIcon: const Icon(Icons.newspaper),),
                ]
              ),
            ),
            Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 20,),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        color: Pallete.pink4,
                      ),
                      child: const SizedBox(
                        width: 310,
                        height: 25,
                        child: Center(
                          child: Text(
                            'Copyright © mules 2023',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: Pallete.whiteColor,
                            ),
                            ),
                        ),
                      ),
                    )
                  ],
                )
              ),
          ],
        )
      ),
    );
  }  
}