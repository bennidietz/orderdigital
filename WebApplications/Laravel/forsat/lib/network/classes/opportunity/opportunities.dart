import 'package:flutter/foundation.dart';
import 'package:forsat/network/classes/common/pagination.dart';
import 'package:forsat/network/classes/opportunity/opportunity.dart';

class Opportunities {
  final Pagination pagination;
  final List<Opportunity> opportunities;

  Opportunities({
    @required this.pagination,
    @required this.opportunities
  });
}