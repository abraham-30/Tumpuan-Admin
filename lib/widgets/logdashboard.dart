import "package:flutter/material.dart";
import "package:tumpuan/palette/palette.dart";
import "package:tumpuan/widgets/logitems.dart";

class LogDashboard extends StatelessWidget{
  const LogDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: LogItems()
      ),
    );
  }
}