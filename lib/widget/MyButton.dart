import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({this.colors,
    this.height,
    this.radius,
    this.width,
    this.onTap,
    @required this.child});

  final List<Color> colors;
  final double height;
  final double width;
  final Widget child;
  final BorderRadius radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<Color> _colors = colors ??
        [theme.primaryColor, theme.primaryColorDark ?? theme.primaryColor];

    return DecoratedBox(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
            onTap: onTap,
            borderRadius: radius,
            splashColor: _colors.last,
            highlightColor: Colors.transparent,
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size(width, height)),
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: DefaultTextStyle(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      child: child,
                    ),
                  )),
            )),
      ),
    );
  }
}
