import 'package:forsat/network/classes/common/pagination.dart';
import 'package:forsat/network/classes/opportunity/opportunities.dart';
import 'package:forsat/network/classes/opportunity/opportunity.dart';
import 'package:forsat/network/reposities/opportunity_repository.dart';

class OpportunityState {
  final OpportunityRepository _opportunityRepository;

  OpportunityState(this._opportunityRepository);

  List<Opportunity> _opportunities = [];
  List<Opportunity> get opportunities => _opportunities;

  Pagination _pagination;

  Future getAllOpportunities() async{
    Opportunities _tmpOpportunities = await _opportunityRepository.getAllOpportunities();
    _opportunities = _tmpOpportunities.opportunities;
    _pagination = _tmpOpportunities.pagination;
  }
}