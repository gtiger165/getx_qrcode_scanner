import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.verticalPadding = 8.0,
    this.horizontalPadding = 16.0,
    this.callback,
    this.style,
    required this.label,
  }) : super(key: key);

  final double verticalPadding;
  final double horizontalPadding;
  final Function()? callback;
  final ButtonStyle? style;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      child: ElevatedButton(
        style: style ??
            ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.blueGrey,
              splashFactory: InkRipple.splashFactory,
              textStyle: const TextStyle(color: Colors.white),
            ),
        onPressed: callback,
        child: Text(label),
      ),
    );
  }
}
