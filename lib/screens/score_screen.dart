import 'package:flutter/material.dart';
import 'package:faucon_qcm/color.dart';

class ScoreScreen extends StatelessWidget {
  final Color couleurresultat;
  final String message;
  final double pointgagner;
  const ScoreScreen(
      {Key? key,
      required this.couleurresultat,
      required this.message,
      required this.pointgagner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Quiz'),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/congrats.png',
                  height: 400,
                  width: 300,
                ),
                Text('Felicitation !!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '${(pointgagner * 100).toStringAsFixed(2)}',
                  style: TextStyle(
                      color: couleurresultat,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    message,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
