class Pagination {
  final int curentPage;
  final int lastPage;

  Pagination.fromJson(Map<String, dynamic> jsonMap):
      curentPage = jsonMap['curentPage'] ?? 0,
        lastPage = jsonMap['lastPage'] ?? 0;
}