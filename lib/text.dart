
import 'package:flutter/material.dart';

/// Fonts
enum DSFRFont{
  marianne("Marianne"),
  spectral("Spectral");

  const DSFRFont(this.value);
  final String value;

}

/// Text in DSFR format
class DSFRText extends StatelessWidget{

  DSFRText({super.key, required this.text, this.font = DSFRFont.marianne, this.fontSize = 20, this.fontWeight, this.lineHeight});
  
  final String text;
  final DSFRFont font;
  final double fontSize;
  final FontWeight? fontWeight;
  /// Space between two lines
  final double? lineHeight;

  @override
  Widget build(BuildContext context) {
    return Text(text, 
      style: TextStyle(fontFamily: font.value,
                      fontSize: fontSize,
                      fontWeight: fontWeight, 
                      height: 1.03),
    );
  }

}