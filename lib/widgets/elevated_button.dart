import 'package:flutter/material.dart';

class ButtonElevated extends StatelessWidget {
  ButtonElevated({super.key, required this.onp, required this.numberAdd});
  void Function() onp;
  String numberAdd;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onp,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff358679),
        minimumSize: const Size(150, 50),
      ),
      child: Text(
        numberAdd,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
