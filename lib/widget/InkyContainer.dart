part of widgets;

class InkyContainer extends StatelessWidget {
  InkyContainer({
    @required this.theme,
    this.child,
    this.splashColour,
    this.colour, // default is from this.theme.scheme
    this.borderRadius,
    this.onTap,
  });

  final ThemeHolder theme;
  final Widget child;
  final Color colour;
  final Color splashColour;
  final BorderRadiusGeometry borderRadius;

  final void Function() onTap; // anonymous function

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: onTap ?? () {}, // onTap or empty function
      radius: theme.inkwellRadius,
      splashColor: splashColour ?? theme.scheme.primaryVariant,
      customBorder: RoundedRectangleBorder(
        borderRadius: borderRadius ?? theme.borderRadius,
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? theme.borderRadius,
          color: colour ?? theme.scheme.secondary,
        ),
        child: child,
      ),
    );
  }
}
