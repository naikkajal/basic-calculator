import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
      child: Column(
        children: [
          Display1(hint: "Enter First Number"), 
          SizedBox(height: 30,),
          Display1(hint: "Enter Second Number"), 
        ],
      ),
    );
  }
}

class Display1 extends StatelessWidget {
  final String hint; 

  const Display1({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: hint, // Use the custom hint text passed to the widget
      ),
    );
  }
}
