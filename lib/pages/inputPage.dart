part of pages;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Enums.Gender _gender = Enums.Gender.male;
  double _height = 180;
  int _weight = 74;
  int _age = 19;

  @override
  Widget build(BuildContext context) {
    final Constants.Texts texts = Constants.Texts.createFromLanguage();

    final Themes.ThemeHolder theme = Themes.ThemeHolder.getThemeHolder(context);
    final ColorScheme scheme = theme.scheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(texts.appTitle),
      ),
      body: Center(
        child: ListView(
          physics: new NeverScrollableScrollPhysics(),
          children: [
            Padding(// male & female
              padding: EdgeInsets.all(theme.paddingSize * 2.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: theme.genderFlex,
                    child: Widgets.InkyContainer(
                      theme: theme,
                      colour: _gender == Enums.Gender.male ? theme.scheme.primary : null, // when null it picks the default
                      onTap: () {
                        if (_gender != Enums.Gender.male) {
                          setState(() {
                            _gender = Enums.Gender.male;
                          });
                        }
                      },
                      child: Padding(
                        padding: theme.insets,
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.male,
                              size: theme.genderIconSize,
                              color: _gender == Enums.Gender.male
                                  ? theme.scheme.onPrimary
                                  : theme.scheme.primaryVariant,
                            ),
                            Text(
                              texts.genderMale,
                              style: TextStyle(
                                color: _gender == Enums.Gender.male
                                    ? theme.scheme.onPrimary
                                    : theme.scheme.primaryVariant,
                                fontSize: theme.genderFontSize,
                                fontWeight: theme.genderFontWeight,
                              ),
                              locale: texts.locale,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), // male
                  Spacer(flex: theme.genderSpacerFlex),
                  Expanded(
                    flex: theme.genderFlex,
                    child: Widgets.InkyContainer(
                      theme: theme,
                      colour: _gender == Enums.Gender.female ? theme.scheme.primary : null, // when null it picks the default
                      onTap: () {
                        if (_gender != Enums.Gender.female) {
                          setState(() {
                            _gender = Enums.Gender.female;
                          });
                        }
                      },
                      child: Padding(
                        padding: theme.insets,
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.female,
                              size: theme.genderIconSize,
                              color: _gender == Enums.Gender.female
                                  ? theme.scheme.onPrimary
                                  : theme.scheme.primaryVariant,
                            ),
                            Text(
                              texts.genderFemale,
                              style: TextStyle(
                                color: _gender == Enums.Gender.female
                                    ? theme.scheme.onPrimary
                                    : theme.scheme.primaryVariant,
                                fontSize: theme.genderFontSize,
                                fontWeight: theme.genderFontWeight,
                              ),
                              locale: texts.locale,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), // female
                ],
              ),
            ), // male & female
            Padding( // height selector
              padding: EdgeInsets.only(
                left: theme.paddingSize * 2.0,
                right: theme.paddingSize * 2.0,
              ),
              child: Widgets.StyledContainer(
                theme: theme,
                child: SizedBox(
                  height: 175,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: theme.paddingSize, bottom: theme.paddingSize),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: theme.heightTopFlex,
                          child: Center(
                            child: Text(
                              texts.height,
                              style: TextStyle(
                                color: theme.scheme.primaryVariant,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: theme.heightMiddleFlex,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  _height.round().toString(),
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: theme.heightMiddleNumberSize,
                                    fontWeight: theme.heightMiddleNumberWeight,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(-.9, .75),
                                child: Text(
                                  texts.heightMeasurement,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: theme.scheme.primaryVariant,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: theme.heightSliderFlex,
                          child: Padding(
                            padding: theme.insets,
                            child: SliderTheme(
                              data: SliderThemeData(
                                thumbColor: theme.scheme.surface,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: theme.heightSliderThumbRadius,
                                ),
                                overlayColor: theme.scheme.surface.withOpacity(theme.heightSliderOverlayOpacity),

                                trackHeight: theme.heightSliderTrackHeight,
                                //trackShape: SliderTrackShape, // too much effort ¯\_(ツ)_/¯
                                activeTrackColor: theme.scheme.onPrimary,
                                inactiveTrackColor: theme.scheme.primaryVariant,
                              ),
                              child: Slider(
                                value: _height,
                                min: 147.0,
                                max: 272.0,
                                divisions: 272 - 147,
                                onChanged: (double val) {
                                  setState(() => _height = val);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ), // height selector
            Padding(// weight & age
              padding: EdgeInsets.all(theme.paddingSize * 2.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: theme.weageFlex,
                    child: Widgets.StyledContainer(
                      theme: theme,
                      child: Padding(
                        padding: theme.insets,
                        child: Column(
                          children: <Widget>[
                            Text(
                              texts.weight,
                              style: TextStyle(
                                color: theme.scheme.primaryVariant,
                                fontSize: theme.weightTextSize,
                              ),
                            ),
                            Text(
                              _weight.round().toString(),
                              style: TextStyle(
                                color: theme.scheme.onPrimary,
                                fontSize: theme.weightWeightSize,
                                fontWeight: theme.weightWeightWeight,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(// sub
                                  flex: theme.weageButtonFlex,
                                  child: Widgets.SquareButton(
                                    theme: theme,
                                    icon: Icons.remove,
                                    onPressed: () {
                                      setState(() {
                                        _weight--;
                                      });
                                    },
                                  ),
                                ), // sub
                                Spacer(flex: theme.weageButtonSpacerFlex),
                                Expanded(// add
                                  flex: theme.weageButtonFlex,
                                  child: Widgets.SquareButton(
                                    theme: theme,
                                    icon: Icons.add,
                                    onPressed: () {
                                      setState(() {
                                        _weight++;
                                      });
                                    },
                                  ),
                                ), // add
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), // weight
                  Spacer(flex: theme.weageSpacerFlex),
                  Expanded(
                    flex: theme.weageFlex,
                    child: Widgets.StyledContainer(
                      theme: theme,
                      child: Padding(
                        padding: theme.insets,
                        child: Column(
                          children: <Widget>[
                            Text(
                              texts.age,
                              style: TextStyle(
                                color: theme.scheme.primaryVariant,
                                fontSize: theme.ageTextSize,
                              ),
                            ),
                            Text(
                              _age.round().toString(),
                              style: TextStyle(
                                color: theme.scheme.onPrimary,
                                fontSize: theme.ageAgeSize,
                                fontWeight: theme.ageAgeWeight,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(// sub
                                  flex: theme.weageButtonFlex,
                                  child: Widgets.SquareButton(
                                    theme: theme,
                                    icon: Icons.remove,
                                    onPressed: () {
                                      setState(() {
                                        _age--;
                                      });
                                    },
                                  ),
                                ), // sub
                                Spacer(flex: theme.weageButtonSpacerFlex),
                                Expanded(
                                  // add
                                  flex: theme.weageButtonFlex,
                                  child: Widgets.SquareButton(
                                    theme: theme,
                                    icon: Icons.add,
                                    onPressed: () {
                                      setState(() {
                                        _age++;
                                      });
                                    },
                                  ),
                                ), // add
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), // age
                ],
              ),
            ), // weight & age
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: theme.bottomHeight,
        child: Widgets.InkyContainer(
          theme: theme,
          colour: theme.scheme.surface,
          splashColour: theme.scheme.onSurface,
          borderRadius: BorderRadius.zero,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResultPage()),
            );
          },
          child: Center(
            child: Text(
              texts.calculateButton,
              style: TextStyle(
                fontSize: theme.bottomTextSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
