part of widgets;

class SquareButton extends StatelessWidget {
  SquareButton({
    @required this.theme,
    this.icon,
    this.colour,
    this.aspectRatio,
    this.onPressed,
  });

  final ThemeHolder theme;
  final IconData icon;
  final Color colour;
  final double aspectRatio;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: aspectRatio ?? 1,
      child: TextButtonTheme(
        data: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: theme.scheme.primaryVariant,
            backgroundColor: colour ?? theme.scheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                theme.weageButtonRadius,
              ),
            ),
          ),
        ),
        child: TextButton(
          onPressed: onPressed ?? () {},
          child: Icon(
            icon,
            color: theme.scheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
