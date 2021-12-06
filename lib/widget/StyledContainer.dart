part of widgets;

class StyledContainer
{
  static Container get({
    Widget child,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
    AlignmentGeometry alignment = Alignment.topLeft
  }) {
    return new Container(
      child: child,
      padding: padding,
      alignment: alignment,


    );
  }
}
