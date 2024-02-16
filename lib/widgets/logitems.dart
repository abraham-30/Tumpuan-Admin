import "package:flutter/material.dart";
import "package:tumpuan/palette/palette.dart";

class LogItems extends StatelessWidget{
  const LogItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(),
            Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      '00:00'
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text('Admin Untuk Puan'),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Update Data on Suara Puan'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}