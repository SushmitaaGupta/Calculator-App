import 'package:calculator_app/Provider/calc_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.label, this.textColor = Colors.white});
  final String label;
  final Color textColor;


  @override
  Widget build(BuildContext context) {

    return InkWell(
      
      onTap: () =>
        Provider.of<Calculator_Provider>(context, listen: false).setValue(label),

      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(30),
        child:  CircleAvatar(
          radius: 30,backgroundColor: Color_App.backgroundcolor4,child: Text(label, style: TextStyle(color: textColor),),),
      ),
    );
  }
}
