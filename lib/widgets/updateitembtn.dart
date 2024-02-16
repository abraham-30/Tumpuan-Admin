import "package:flutter/material.dart";
import "package:tumpuan/palette/palette.dart";

class UpdateItemButton extends StatelessWidget{
  const UpdateItemButton({Key? key, required this.onPressed,}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 30,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: getColor(Pallete.pink1, Pallete.pink1),
          backgroundColor: getColor(Pallete.pink1, Pallete.pink1),
          fixedSize: const MaterialStatePropertyAll(Size(275, 50)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )
          ),
          child: const Text(
              'Update', 
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Pallete.blackColor,
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