import 'package:flutter/material.dart';

class StadiumButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final Function() onPressed;
  const StadiumButton(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  State<StadiumButton> createState() => _StadiumButtonState();
}

class _StadiumButtonState extends State<StadiumButton> {
  @override
  Widget build(BuildContext context) {
    bool isHovering = false;
    return ElevatedButton.icon(
        onHover: (value) {
          setState(() {
            isHovering = value;
          });
        },
        style: ElevatedButton.styleFrom(
            primary:
                !isHovering ? const Color(0xFF3B3A4D) : const Color(0xFF424757),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            shape: const StadiumBorder()),
        onPressed: widget.onPressed,
        icon: Icon(widget.icon, color: Colors.pink),
        label: Text(widget.text, style: const TextStyle(color: Colors.pink)));
  }
}
