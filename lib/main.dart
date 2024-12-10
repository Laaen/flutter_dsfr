import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/navigation.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(routes: 
  <RouteBase>[
    GoRoute(path: "/", builder: (BuildContext context, GoRouterState state){ return MyHomePage(); },
  routes: <RouteBase>[
    GoRoute(path: "/test", builder: (BuildContext context, GoRouterState state){ return Test(); })
  ]
  )
  ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router, theme: ThemeData.dark(),);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    DSFRNavigation nav = DSFRNavigation(linksData: [(texte: "Blip", destination: "/test"), (texte: "Tableau de bord", destination: "/test")]);
    return Scaffold(
      appBar: DSFRHeader(siteName: "Notre Assistance", intitule: "République française", precisions: "La meilleure appli du monde", nav: nav),
      body: DSFRCardDialog(intitule: "Test", texte: "Blip", detailHaut: "Bonjourent", detailBas: "C'est de la merde",)
    );
  }
}

class Test extends StatelessWidget{

  Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }

}