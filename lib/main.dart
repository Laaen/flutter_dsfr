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
      body: Column(
        children: [ Container(
                    margin: EdgeInsets.all(20),
                    child: DSFRCardDialog(intitule: "Test", texte: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec efficitur convallis tortor eget luctus. Nunc in finibus quam. Suspendisse eget augue ut arcu finibus sagittis sed non dui. Fusce posuere arcu a arcu semper viverra. Sed id efficitur tellus. Nulla odio nunc, bibendum et eros vel, elementum interdum velit. Nullam at enim quis lorem convallis vestibulum vitae ac massa. Ut eros ex, condimentum a quam in, lacinia tristique nibh. Proin at turpis porta, pretium mi sit amet, semper diam.", detailHaut: "Bonjourent", detailBas: "C'est de la merde",),),
                  DSFRPrimaryButton(onPressed: (){}, text: "Bonjour",)
        ]
      ) 
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