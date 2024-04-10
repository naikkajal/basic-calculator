import 'package:basic_calculator/calculator_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Container(
          color: Colors.orange,
          child: CalculatorView(),
        ),
      ),
    );
  }
}
