import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';


class DSFRPrimaryButton extends StatelessWidget{
  DSFRPrimaryButton ({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,
      child: DSFRText(text: text, color: Colors.black,),
      style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                                  backgroundColor: Color.fromARGB(255, 133, 133, 246),
                                  shape: ContinuousRectangleBorder(), tapTargetSize: MaterialTapTargetSize.shrinkWrap, padding: EdgeInsets.all(20)),
     );
  }
}
