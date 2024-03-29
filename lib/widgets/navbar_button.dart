import "package:flutter/material.dart";
import "package:tumpuan/palette/palette.dart";

class NavbarButton extends StatelessWidget{
  final VoidCallback onPressed;
  const NavbarButton({Key? key, required this.onPressed, required this.buttonLabel, required this.buttonIcon,}) : super(key: key);
  final String buttonLabel;
  final Icon buttonIcon;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: buttonIcon,
      style: ButtonStyle(
        foregroundColor: getColor(Pallete.pink4, Pallete.whiteColor),
        backgroundColor: getColor(Pallete.pink0, Pallete.pink4),
        fixedSize: const MaterialStatePropertyAll(Size(275, 50)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        )
        ),
        label: Align(alignment: Alignment.centerLeft, child: new Text(
            '$buttonLabel', 
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        )
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
    getColor(Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return colorPressed;
      } else {
        return color;
      }
    }
    return MaterialStateProperty.resolveWith(getColor);
  }
}