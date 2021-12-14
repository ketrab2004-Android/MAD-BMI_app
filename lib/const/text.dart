part of consts;

class Texts
{
  static Texts createFromLanguage()
  {
    return Texts(); // temporary default
  }

  Locale locale = Locale('en', 'GB');

  String appTitle = "BMI CALCULATOR";

  String genderMale = "Male";
  String genderFemale = "Female";

  String height = "Height";
  String heightMeasurement = "cm";

  String weight = "Weight";
  String age = "Age";

  String calculateButton = "Calculate your BMI";
  String recalculateButton = "Re-calculate your BMI";
}
