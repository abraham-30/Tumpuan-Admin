import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';
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
                  CircleAvatar(
                  radius: 32,
                  backgroundColor: Pallete.pink4,
                  ),
                  Text(
                    'Miko',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    color: Pallete.blackColor,
                    // tooltip: '',
                    onPressed: () {},
                  ),
                ]
              )
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {},),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {},),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {},),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {},),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {},),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {},),
                ]
              ),
            ),
            ListTile(
              subtitle: Column(
                children:[
                  NavbarButton(onPressed: () {},),
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