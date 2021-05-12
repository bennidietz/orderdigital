
import 'package:dio/dio.dart';
import 'package:forsat/network/classes/errors/common_error.dart';
import 'package:forsat/network/classes/opportunity/opportunity.dart';
import 'package:forsat/network/forsat_api.dart';
import 'package:forsat/network/storage/local_storage.dart';
import 'package:forsat/network/storage/storage_keys.dart';

abstract class OpportunityRepository {
  // fetch the opportunities
  Future<List<Opportunity>> getAllOpportunities();
}

class OpportunityRepositoryImpl implements OpportunityRepository {
  @override
  Future<List<Opportunity>> getAllOpportunities() async{
    try {
      final response = await ForsatAPI.dio.get('/api/opportunity',
        options: Options(headers: {
          'Authorization': 'Bearer ${LocalStorage.getItem(TOKEN)}'
        })
      );
      List _temp = response.data['data'];
      List<Opportunity> _opportunities = _temp.map((opportunity)
        => Opportunity.fromJson(opportunity)
      ).toList();
      return _opportunities;
      print(response);
    } on DioError catch (e) {
      throw showNetworkError(e);
    }
  }

}