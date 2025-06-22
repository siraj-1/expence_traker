import 'package:flutter/material.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(children: [
          CircleAvatar(
              backgroundColor: Colors.yellow, child: Icon(Icons.person)),
          SizedBox(width: 10),
          Column(
            children: [
              Text("welcome !",
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text("Joun Doh",
                  style: TextStyle(color: Colors.black, fontSize: 16))
            ],
          )
        ]),
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
      ],
    );
  }
}
