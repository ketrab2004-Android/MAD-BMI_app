part of widgets;

class StyledContainer extends StatelessWidget {
  StyledContainer({
    @required this.theme,
    this.child,
    this.colour, // default is from this.theme.scheme
    this.padding = const EdgeInsets.all(8.0),
    this.alignment = Alignment.topLeft,
  });

  final ThemeHolder theme;
  final Color colour;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: child,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: theme.borderRadius,
        color: colour ?? theme.scheme.secondary,
      ),
    );
  }
}
