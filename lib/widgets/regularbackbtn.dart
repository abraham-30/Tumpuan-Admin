import "package:flutter/material.dart";
import "package:tumpuan/palette/palette.dart";

class RegularBackButton extends StatelessWidget{
  final VoidCallback onPressed;
  const RegularBackButton({Key? key, required this.onPressed,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Material(    
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: Pallete.pink2),
          borderRadius: BorderRadius.circular(8)
        ),
        child: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20.0,
              color: Pallete.pink2,
            ),
          ),
        ),
      ),
    );
    //   return IconButton(
    //   style: ButtonStyle(
    //     shape: MaterialStatePropertyAll(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10),
    //         )
    //     ), 
    //     iconColor: const MaterialStatePropertyAll(Pallete.pink2),
    //   ),
    //   onPressed: (){
    //     Navigator.of(context).pop();
    //   },
    //   icon: const Icon(Icons.arrow_back_ios_new),
    // );
  }
}