import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 32.0),
      child: Column(
        children: [
          DisplayOne(
              hint: "Enter First Number", controller: displayOneController),
          SizedBox(
            height: 30,
          ),
          DisplayOne(
              hint: "Enter Second Number", controller: displayTwoController),
          SizedBox(
            height: 80,
          ),
          Text(
            z.toString(),
            style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        z = num.tryParse(displayOneController.text)! +
                            num.tryParse(displayTwoController.text)!;
                      });
                    },
                    child: const Icon(Icons.add),
                    backgroundColor: Colors.orange),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! -
                          num.tryParse(displayTwoController.text)!;
                    });
                  },
                  backgroundColor: Colors.orange,
                  child: const Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        z = num.tryParse(displayOneController.text)! *
                            num.tryParse(displayTwoController.text)!;
                      });
                    },
                    child: const Icon(CupertinoIcons.multiply),
                    backgroundColor: Colors.orange),
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        z = num.tryParse(displayOneController.text)! /
                            num.tryParse(displayTwoController.text)!;
                      });
                    },
                    child: const Icon(CupertinoIcons.divide),
                    backgroundColor: Colors.orange),
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        x = 0;
                        y = 0;
                        z = 0;
                        displayOneController.clear();
                        displayTwoController.clear();
                      });
                    },
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

class DisplayOne extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;

  const DisplayOne({Key? key, required this.hint, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: hint,
      ),
    );
  }
}
