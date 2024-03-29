import "package:flutter/material.dart";
import "package:tumpuan/palette/palette.dart";

class RegularButton extends StatelessWidget{
  const RegularButton({Key? key, required this.onPressed, required this.buttonLabel,}) : super(key: key);
  final VoidCallback onPressed;
  final String buttonLabel;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
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
          child: Text(
              '$buttonLabel', 
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
      ),
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