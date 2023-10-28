import 'package:calculator_app/Widget/CustomTextField.dart';
import 'package:calculator_app/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/calc_Provider.dart';
import '../Widget/calculateButton.dart';
import '../constant/colors.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    return Consumer<Calculator_Provider>(
      builder: (context, provider,_) {
        return Scaffold(
          appBar: AppBar(title: const Text("CALCULATOR"),),
          body: Column(
            children:  [
             CustomTextFiled(controller: provider.compController,),
              const Spacer(),
              Container(height: screenHeight*0.6, width: double.infinity,padding: padding,
              decoration: const BoxDecoration(
                color: Color_App.backgroundcolor2,
                borderRadius: BorderRadius.vertical(top:Radius.circular(20) )
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index])
                    ),

                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) => buttonList[index+4])
                    ),


                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) => buttonList[index+8])
                    ),


                    Row(
                      children: [
                        Expanded(

                          child: Column(
                            children: [
                              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(3, (index) => buttonList[index+12])
                              ),
                              const SizedBox(height: 25,),
                              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(3, (index) => buttonList[index+15])
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),

                        CalculateButton(),
                      ],
                    )
                  ],
                ),
              )



            ],
          ),
        );
      }
    );
  }
  List<Widget> buttonList =[
    Buttons(label: 'C', textColor: Colors.blue,),
    Buttons(label: '/', textColor: Colors.blue),
    Buttons(label: '*', textColor: Colors.blue),
    Buttons(label: 'AC', textColor: Colors.blue),

    Buttons(label: '7',),
    Buttons(label: '8',),
    Buttons(label: '9',),
    Buttons(label: '+', textColor: Colors.blue),
    Buttons(label: '4',),
    Buttons(label: '5', ),
    Buttons(label: '6',),
    Buttons(label: '-', textColor: Colors.blue),
    Buttons(label: '1', ),
    Buttons(label: '2',),
    Buttons(label: '3',),


    Buttons(label: '%',),
    Buttons(label: '0', ),
    Buttons(label: '.', ),



  ];
}
