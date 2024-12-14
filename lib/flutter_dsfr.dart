library flutter_dsfr;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/header.dart';

export './flutter_dsfr.dart';
export './header.dart';
export './navigation.dart';
export './card.dart';
export './text.dart';
export './button.dart';


void main(){
  print("ALed ?");
  runApp(MaterialApp(home: TestApp()));
}


class TestApp extends StatelessWidget{
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DSFRHeader(siteName: "Notre Assistance", intitule: "République Française");
  }
}