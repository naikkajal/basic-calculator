import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 32.0),
      child: Column(
        children: [
          Display1(hint: "Enter First Number"), 
          SizedBox(height: 30,),
          Display1(hint: "Enter Second Number"),
          SizedBox(height: 80,),
          Text("0",
          style: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.bold
          ),), 
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(onPressed: () {},
                child: const Icon(Icons.add),
                backgroundColor: Colors.orange),
                FloatingActionButton(onPressed: () {},
                backgroundColor: Colors.orange,
                child: const Icon(CupertinoIcons.minus),),
                FloatingActionButton(onPressed: () {},
                child: const Icon(CupertinoIcons.multiply),
                backgroundColor: Colors.orange),
                FloatingActionButton(onPressed: () {},
                child: const Icon(CupertinoIcons.divide),
                backgroundColor: Colors.orange),
                FloatingActionButton(onPressed: () {},
                child: const Icon(CupertinoIcons.delete),
                backgroundColor: Colors.orange)
              ],
            ),
          )
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
