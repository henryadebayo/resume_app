import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundWhiteButton extends StatelessWidget {
  final String label;
  final double height;
  final double? width;
  var onTap;

  RoundWhiteButton({
    Key? key,
    required this.label,
    required this.height,
    this.width,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40.0),
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: Colors.white,
          minimumSize: const Size(88, 36),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.blue),
          ),
        ),
        onPressed: onTap,
        child: Text(label,
            style: const TextStyle(fontSize: 20.0, color: Colors.blue)),
      ),
    );
  }
}
