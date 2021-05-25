class DescriptionFormField {
  final String description;

  DescriptionFormField(this.description);

  validate() {
    if (description == null || description.isEmpty || description.length < 5) {
      throw Exception("Description is required");
    }
  }
}