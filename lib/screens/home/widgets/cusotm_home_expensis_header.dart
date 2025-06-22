import 'dart:math';

import 'package:flutter/material.dart';

class CusotmHomeExpensisWidget extends StatelessWidget {
  const CusotmHomeExpensisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(3, 9), // changes position of shadow
          )
        ],
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.purple,
          Colors.orange.shade300,
        ], transform: const GradientRotation(pi / 4)),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Total Balance",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(height: 35),
            const Text(
              " \$ 4800.00 ",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.2)),
                  child: const Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Income",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 12),
                    ),
                    const Text(
                      "2800.00",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.2)),
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Outcome",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 12),
                    ),
                    const Text(
                      "800.00",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
