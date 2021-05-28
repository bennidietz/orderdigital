import 'package:forsat/network/classes/common/country.dart';

class CountryFormField {
  final Country country;

  CountryFormField(this.country);

  validate() {

  }

  bool isValid() {
    return country != null;
  }
}