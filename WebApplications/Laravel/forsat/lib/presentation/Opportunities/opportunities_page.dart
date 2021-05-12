import 'package:flutter/material.dart';
import 'package:forsat/network/state/opportunity_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class OpportunitiesPage extends StatefulWidget {
  @override
  _OpportunitiesPageState createState() => _OpportunitiesPageState();
}

class _OpportunitiesPageState extends State<OpportunitiesPage>
    with AutomaticKeepAliveClientMixin{

  final _opportunitiesStateRM = Injector.getAsReactive<OpportunityState>();

  @override
  void initState() {
    _opportunitiesStateRM.setState((opportunityState)
      => opportunityState.getAllOpportunities()
    );
    super.initState();
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
        child: StateBuilder(
          observe: () => _opportunitiesStateRM,
          builder: (_, model) {
            return Column(
              children: [

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
