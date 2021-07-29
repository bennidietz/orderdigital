class CheckboxValue {
  final String text;
  final bool done;

  CheckboxValue(this.text, this.done);
}

List<CheckboxValue> PACKLIST_VALUES = [
  CheckboxValue("Spikeball", true),
  CheckboxValue("Musikbox", false),
  CheckboxValue("Badesachen", true),
  CheckboxValue("Zahnpasta", false),
];

List<CheckboxValue> IDEAS_VALUES = [
  CheckboxValue("Abends schwimmen gehen", false),
  CheckboxValue("Tanzen", false),
];