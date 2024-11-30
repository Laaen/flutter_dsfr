
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/text.dart';
import 'package:go_router/go_router.dart';


/// Lien d'une barre de navigation, la destination doit correspondre à une route qui est définie via un GoRouter
class DSFRNavigationLien extends StatelessWidget{

  DSFRNavigationLien({super.key, required this.texte, required this.destination});

  final String texte;
  final String destination;

  @override
  Widget build(BuildContext context) {
    return Container(width: 200, height: 60, alignment: Alignment.center,
        child: TextButton(
        style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                                    maximumSize: Size.infinite, 
                                    minimumSize: Size.infinite,
                                    shape: ContinuousRectangleBorder()),
        onPressed: () => context.go(destination),
        child: Container(child: DSFRText(text: texte), ),
      )
    );
  }
}

class DSFRNavigation extends StatelessWidget{

  DSFRNavigation({super.key, required this.linksData});

  final List<({String texte, String destination})> linksData;

  @override
  Widget build(BuildContext context) {
    List<DSFRNavigationLien> linksList = linksData.map((elt) => DSFRNavigationLien(texte: elt.texte, destination: elt.destination)).toList();
    return Row(
      children: linksList,
    );
  }

}