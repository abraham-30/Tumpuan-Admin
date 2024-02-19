import "package:flutter/material.dart";
import "package:tumpuan/palette/palette.dart";

class GroupingButton extends StatelessWidget{
  final VoidCallback onPressed;
  const GroupingButton({Key? key, required this.onPressed, required this.buttonIcon,}) : super(key: key);
  final IconData buttonIcon;
  
  @override
  Widget build(BuildContext context) {
    return Material(    
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: Pallete.pink4),
          borderRadius: BorderRadius.circular(8)
        ),
        child: InkWell(
          onTap: (){
            // Navigator.of(context).pop();
          },
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              buttonIcon,
              color: Pallete.pink3,
              size: 15,
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