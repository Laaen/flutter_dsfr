
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
    return GestureDetector(
      onTap: () => context.go(destination),
      child: Container(child: DSFRText(text: texte), ),
    );
  }
}

class DSFRNavigation extends StatelessWidget{

  DSFRNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}