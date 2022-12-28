import 'package:flutter/cupertino.dart';
import 'package:sprung/sprung.dart';


class OnHoverButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverButton({required this.builder, Key? key}) : super(key: key);

  @override
  _OnHoverButtonState createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false; // default

  @override
  Widget build(BuildContext context) {
    final Matrix4 hoveredTransform = Matrix4.identity();
    // ..translate(0.3, 0)
    // ..scale(1.1);
    final Matrix4 transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
          curve: Sprung.overDamped,
          duration: Duration(microseconds: 300),
          transform: transform,
          child: widget.builder(isHovered),
        ));
  }

  void onEntered(bool isHovered) => setState(() {
    this.isHovered = isHovered;
  });
}
