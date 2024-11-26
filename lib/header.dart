
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './text.dart';

export 'package:flutter_svg/flutter_svg.dart';

/// Header utilisable en guise de AppBar
class DSFRHeader extends StatelessWidget implements PreferredSizeWidget{

  DSFRHeader({super.key, required this.siteName, required this.intitule, this.precisions = ""});

  final String siteName;
  final String intitule;
  final String precisions;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(preferredSize: Size.fromHeight(150),
      child: Container(margin: EdgeInsets.all(20), child:
        Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DSFRBlocMarque(intitule: intitule),
                Column( mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    DSFRText(text: "NotreAssistance", fontWeight: FontWeight.w700, fontSize: 30,),
                    DSFRText(text: precisions), 
                  ]
                ),
              ],
            )
          ]
        )
      )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}

/// Le bloc de marque (Marianne + intitulé + devise)
class DSFRBlocMarque extends StatelessWidget{

  DSFRBlocMarque({super.key, required this.intitule});

  final String intitule;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset("assets/images/marianne.svg", width: 50,),
          Container(child: DSFRText(text: intitule.toUpperCase(), fontWeight: FontWeight.w700,), width: 200, margin: EdgeInsets.only(top: 5, bottom: 5),),
          SvgPicture.asset("assets/images/devise.svg", colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn), width: 50,),
        ],)
    );
  }
}