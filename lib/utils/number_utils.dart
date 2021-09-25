String doubleToEuroString(double number) =>
    '${number.floor()},${decicmals(number)} €';

String decicmals(double number) {
  int dec = (number * 100).round() - number.floor() * 100;
  if (dec.toString().length > 1) {
    return dec.toString();
  } else {
    return dec.toString() + '0';
  }
}
