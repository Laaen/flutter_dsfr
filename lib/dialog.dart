import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DSFRDialog extends StatelessWidget{
  DSFRDialog({super.key, required this.titre, required this.texte});

  final String titre;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: ContinuousRectangleBorder(),
      backgroundColor: ThemeData.dark().dialogBackgroundColor,
      child: Column(
        children: [
          Container(alignment: Alignment.topRight,
            child: Text("Test"),),
          Container(margin: EdgeInsets.all(15), child: DSFRText(text: titre, fontSize: 26, fontWeight: FontWeight.w700,)),
          DSFRText(text: texte)
        ])
    );
  }

}