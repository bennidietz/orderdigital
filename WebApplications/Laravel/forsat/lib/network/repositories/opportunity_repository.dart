
import 'package:dio/dio.dart';
import 'package:forsat/network/classes/common/pagination.dart';
import 'package:forsat/network/classes/errors/common_error.dart';
import 'package:forsat/network/classes/opportunity/opportunities.dart';
import 'package:forsat/network/classes/opportunity/opportunity.dart';
import 'package:forsat/network/classes/opportunity/opportunity_form_model.dart';
import 'package:forsat/network/forsat_api.dart';
import 'package:forsat/network/storage/local_storage.dart';
import 'package:forsat/network/storage/storage_keys.dart';

abstract class OpportunityRepository {
  // fetch the opportunities
  Future<Opportunities> getAllOpportunities(int page);

  Future<Opportunity> saveOpportunity(OpportunityFormModel model);
}

class OpportunityRepositoryImpl implements OpportunityRepository {
  @override
  Future<Opportunities> getAllOpportunities(int page) async{
    try {
      final response = await ForsatAPI.dio.get('/api/opportunity?page=$page',
        options: Options(headers: {
          'Authorization': 'Bearer ${LocalStorage.getItem(TOKEN)}'
        })
      );
      List _temp = response.data['data'];
      var _meta = response.data['meta'];

      Pagination _pagination = Pagination.fromJson(_meta);
      List<Opportunity> _opportunities = _temp.map((opportunity)
        => Opportunity.fromJson(opportunity)
      ).toList();
      return Opportunities(
       opportunities: _opportunities,
       pagination: _pagination
      );
    } on DioError catch (e) {
      throw showNetworkError(e);
    }
  }

  @override
  Future<Opportunity> saveOpportunity(OpportunityFormModel model) async {
    try {
      var _data = {
        "title" : model.title,
        "description" : model.description,
        "category_id" : model.category.id,
        "country_id" : model.country.id,
        "deadline" : model.deadline.toIso8601String(),
        "organizer" : model.organizer,
        "created_by" : 1,
      };
      final response = await ForsatAPI.dio.post('/api/opportunity', data: _data,
        options: Options(headers: {
          'Authorization': 'Bearer ${LocalStorage.getItem(TOKEN)}'
        })
      );
      var _temp = response.data['data'];

      return Opportunity.fromJson(_temp);
    } on DioError catch (e) {
      throw showNetworkError(e);
    }
  }

}