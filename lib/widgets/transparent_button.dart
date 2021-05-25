import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final Function onTap;
  final String text;

  TransparentButton({
    @required this.onTap,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.all(8),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Underdog',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
