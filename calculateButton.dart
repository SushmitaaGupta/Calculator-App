import 'package:calculator_app/Provider/calc_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>
       Provider.of<Calculator_Provider>(context, listen: false).setValue("="),


      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: Center(child: Text("=", style: TextStyle(color: Colors.white, fontSize: 30),),),

      ),
    );
  }
}
