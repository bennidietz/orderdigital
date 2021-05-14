import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forsat/network/state/opportunity_state.dart';
import 'package:forsat/res/images.dart';
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

    TextStyle _iconTextStyle = TextStyle(
      fontFamily: 'Dosis',
      fontSize: 14,
      fontWeight: FontWeight.w600
    );
    double _iconSize = 20;

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
                  (opportunity) => Column(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {

                              },
                              child: Row(
                                children: [
                                  Icon(Icons.school, size: _iconSize,),
                                  SizedBox(width: 5,),
                                  Text("${opportunity.category.name}", style: _iconTextStyle)
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye, size: _iconSize,),
                                SizedBox(width: 5,),
                                Text("${opportunity.id}", style: _iconTextStyle)
                              ],
                            ),
                            TextButton(
                              onPressed: () {

                              },
                              child: Row(
                                children: [
                                  Icon(Icons.share, size: _iconSize,),
                                  SizedBox(width: 5,),
                                  Text("Share", style: _iconTextStyle)
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.event, size: _iconSize,),
                                SizedBox(width: 5,),
                                Text("${opportunity.deadline}", style: _iconTextStyle)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
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
