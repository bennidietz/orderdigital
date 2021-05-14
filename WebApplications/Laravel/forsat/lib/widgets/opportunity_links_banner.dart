import 'package:flutter/material.dart';
import 'package:forsat/network/classes/opportunity/opportunity.dart';
import 'package:flutter/foundation.dart';

class OpportunityLinksBanner extends StatelessWidget {
  const OpportunityLinksBanner({
    Key key,
    @required this.opportunity
  }) : super(key: key);

  final Opportunity opportunity;

  @override
  Widget build(BuildContext context) {

    TextStyle _iconTextStyle = TextStyle(
        fontFamily: 'Dosis',
        fontSize: 14,
        fontWeight: FontWeight.w600
    );
    double _iconSize = 20;

    return Row(
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
    );
  }
}
