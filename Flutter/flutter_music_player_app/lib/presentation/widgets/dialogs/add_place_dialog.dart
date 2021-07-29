import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/model/category.dart';
import 'package:flutter_music_player_app/network/model/journey.dart';
import 'package:flutter_music_player_app/network/model/place.dart';
import 'package:flutter_music_player_app/network/model/place_pages.dart';

import '../../../SizeConfig.dart';
import '../../../network/constants.dart';

class AddPlaceDialog extends StatefulWidget {
  AddPlaceDialog({Key? key, required this.callback, required this.relatedJourney}) : super(key: key);

  final Function callback;

  final MyJourney relatedJourney;

  @override
  _AddPlaceDialogState createState() => _AddPlaceDialogState();
}

class _AddPlaceDialogState extends State<AddPlaceDialog> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: SELECT_LOCATION_PAGES.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: SingleChildScrollView(
          child: Wrap(
            children: [
              Container(
                width: 600,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Neuer Lieblingsort",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: defaultPadding,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Titel",
                      ),
                    ),
                    SizedBox(height: defaultPadding,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Beschreibung",
                      ),
                    ),
                    SizedBox(height: defaultPadding * 1.5,),
                    Text("Wähle deinen Lieblingsort:"),
                    SizedBox(height: defaultPadding * 0.3,),
                    TabBar(
                        controller: tabController,
                        indicatorColor: Colors.blue[900],
                        indicatorWeight: 2.0,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        tabs: <Widget>[
                          ...SELECT_LOCATION_PAGES.map((page) =>
                              Tab(
                                child: Text(page.title.toUpperCase(), style: TextStyle(
                                    fontSize: 1.8 * SizeConfig.textMultiplier,
                                    fontFamily: 'Nunito'
                                ),),
                              ),
                          )
                    ]),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: TabBarView(
                          controller: tabController,
                          children: <Widget>[
                            ...SELECT_LOCATION_PAGES.map((place) => place.screen),
                        ]),
                    ),
                    SizedBox(height: defaultPadding * 1.5,),
                    ElevatedButton(
                        onPressed: () {
                          placeRef.add(
                              MyPlace(
                                  title: "Strand A",
                                  description: "Weißer Stand",
                                  journey_id: widget.relatedJourney.id,
                                  latitude: 13.3,
                                  longitude: 40.5,
                                  //category: MyCategory.beach,
                              )
                          );
                          widget.callback.call();
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                          child: Text(
                            "Hinzufügen",
                            style: TextStyle(
                                fontSize: 18.0
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
