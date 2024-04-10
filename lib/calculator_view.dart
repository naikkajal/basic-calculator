import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
         TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white
                ),
              ),
              hintText: "Enter a number"
            ),
          ),
        
        
      ],
    );
  }
}