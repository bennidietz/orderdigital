import 'package:flutter/material.dart';
import 'package:forsat/network/classes/opportunity/opportunity.dart';
import 'package:forsat/res/images.dart';
import 'package:forsat/widgets/opportunity_links_banner.dart';

class OpportunityDetailsPage extends StatelessWidget {
  const OpportunityDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Opportunity opportunity
      = ModalRoute.of(context).settings.arguments as Opportunity;

    return Scaffold(
      body: SingleChildScrollView(
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
            OpportunityLinksBanner(opportunity: opportunity),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                children: [
                  Text(opportunity.opportunityDetail.benefits)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
