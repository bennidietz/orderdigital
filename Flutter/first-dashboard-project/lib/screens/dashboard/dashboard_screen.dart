import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              SizedBox(height: defaultPadding,),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 500,
                      color: Colors.white,
                    )
                  ),
                  SizedBox(width: defaultPadding,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding),
                      height: 500,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: const BorderRadius.all(
                            Radius.circular(10)
                        )
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Storage Details",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: defaultPadding,),
                          Chart(),
                          Container(
                            padding: EdgeInsets.all(defaultPadding),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: primaryColor.withOpacity(0.15),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(defaultPadding)
                              )
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset("assets/icons/Documents.svg"),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text("Document FIles",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "1329 Files",
                                        style: Theme.of(context).textTheme
                                          .caption.copyWith(color: Colors.white70)
                                      ),
                                    ],
                                  )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  )
                ],
              )
            ],
          )
        )
    );
  }
}