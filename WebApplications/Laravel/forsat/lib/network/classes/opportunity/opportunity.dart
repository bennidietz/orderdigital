import 'package:forsat/network/classes/common/category.dart';
import 'package:forsat/network/classes/common/country.dart';
import 'package:forsat/network/classes/opportunity/opportunity_detail.dart';

class Opportunity {
  final int id;
  final String title;
  final Category category;
  final Country country;
  final String deadline;
  final String organizer;
  final OpportunityDetail opportunityDetail;
  final String createdAt;
  final String updatedAt;

  Opportunity.fromJson(Map<String, dynamic> jsonMap):
      id = jsonMap['id'] ?? 0,
      title = jsonMap['title'] ?? 0,
      category = jsonMap['category']!=null
          ? Category.fromJson(jsonMap['category'])
          : null,
      country = jsonMap['country']!=null
          ? Country.fromJson(jsonMap['country'])
          : null,
      deadline = jsonMap['deadline'] ?? "",
      organizer = jsonMap['organizer'] ?? "",
      opportunityDetail = jsonMap['opportunityDetails']!=null
          ? OpportunityDetail.fromJson(jsonMap['opportunityDetails'])
          : null,
      createdAt = jsonMap['createdAt'] ?? "",
      updatedAt = jsonMap['updatedAt'] ?? "";

}