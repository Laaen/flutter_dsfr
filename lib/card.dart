import 'package:flutter/material.dart';
import "./text.dart";
import './dialog.dart';

/// A DSFRCard which opens a dialog when tapped
class DSFRCardDialog extends StatelessWidget{
  DSFRCardDialog({super.key, required this.intitule, required this.texte, this.detailHaut, this.detailBas});

  final String intitule;
  final String texte;

  final String? detailHaut;
  final String? detailBas;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () => showDialog(context: context, builder: (BuildContext context){ return DSFRDialog(titre: intitule, texte: texte);}),
      style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                                    shape: ContinuousRectangleBorder()),
                                  
     child: DSFRCard(intitule: intitule, texte: texte, detailBas: detailBas, detailHaut: detailHaut,));
  }

}

class DSFRCard extends StatelessWidget{

  DSFRCard({super.key, required this.intitule, required this.texte, this.detailHaut, this.detailBas});

  final String intitule;
  final String texte;

  final String? detailHaut;
  final String? detailBas;

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(15),
      decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 63, 63, 63))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(detailHaut != null) Container(margin: EdgeInsets.only(bottom: 15), child: DSFRText(text: detailHaut!, color: Color.fromARGB(255, 131, 131, 131), fontWeight: FontWeight.normal, fontSize: 15,)),
          DSFRText(text: intitule, fontWeight: FontWeight.w600, fontSize: 25, color: Color.fromARGB(255, 106, 106, 244)),
          Container(margin: EdgeInsets.only(top: 15), child: DSFRText(text: texte, fontWeight: FontWeight.normal, fontSize: 16,)),
          if(detailBas != null) Container(margin: EdgeInsets.only(bottom: 15), child: DSFRText(text: detailBas!, color: Color.fromARGB(255, 131, 131, 131), fontWeight: FontWeight.normal, fontSize: 15,))
        ],
      ),
    );
  }

}