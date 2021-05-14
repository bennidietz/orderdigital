import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forsat/network/state/opportunity_state.dart';
import 'package:forsat/res/images.dart';
import 'package:forsat/router/router_constants.dart';
import 'package:forsat/widgets/opportunity_links_banner.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class OpportunitiesPage extends StatefulWidget {
  @override
  _OpportunitiesPageState createState() => _OpportunitiesPageState();
}

class _OpportunitiesPageState extends State<OpportunitiesPage>
    with AutomaticKeepAliveClientMixin{

  final _opportunitiesStateRM = RM.get<OpportunityState>();

  ScrollController _scrollController;

  @override
  void didChangeDependencies() {
    _scrollController = ScrollController();
    _getNewOpportunities();
    _scrollController.addListener(() {
      double _currentPosition = _scrollController.position.pixels;
      double _maxScrollExtent = _scrollController.position.maxScrollExtent;

      if (_currentPosition >= _maxScrollExtent &&
          !_opportunitiesStateRM.state.loading) {
        _getNewOpportunities();
      }
    });
    super.didChangeDependencies();
  }

  void _getNewOpportunities() {
    _opportunitiesStateRM.setState((opportunityState)
      => opportunityState.getAllOpportunities());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Opportunities Page",
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: StateBuilder<OpportunityState>(
          observe: () => _opportunitiesStateRM,
          builder: (_, model) {
            return Column(
              children: [
                ...model.state.opportunities.map(
                  (opportunity) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, opportunityDetailsRoute,
                          arguments: opportunity
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset(MyImages.test_image),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                          child: Text(
                            "${opportunity.title}",
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: OpportunityLinksBanner(opportunity: opportunity,)
                        )
                      ],
                ),
                  ))
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
