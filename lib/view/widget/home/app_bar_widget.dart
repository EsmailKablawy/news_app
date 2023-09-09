import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          const Icon(Icons.format_align_left),
          const Text(
            'Daily News',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900
            ),
          ),
          Image.asset('assets/images/icons8-notifications-78.png',width: 35,height: 35),
        ],
      ),
    );
  }
}
