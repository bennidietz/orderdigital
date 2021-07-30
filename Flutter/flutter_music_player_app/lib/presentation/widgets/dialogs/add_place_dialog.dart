import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/model/formmodel/place_form_model.dart';
import 'package:flutter_music_player_app/network/model/journey.dart';
import 'package:flutter_music_player_app/network/model/place.dart';
import 'package:flutter_music_player_app/network/model/place_pages.dart';
import 'package:flutter_music_player_app/presentation/widgets/data_loading_text.dart';
import 'package:flutter_music_player_app/presentation/widgets/show_snackbar.dart';
import 'package:latlong2/latlong.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

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

  String? latlngState;
  String category_id = "others";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Injector(
            inject: [Inject<PlaceFormModel>(() => PlaceFormModel())],
            builder: (context) {
              final _singletonPlaceFormModel = RM.get<PlaceFormModel>();
              return SingleChildScrollView(
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
                          StateBuilder<PlaceFormModel>(
                            observe: () => _singletonPlaceFormModel,
                            builder: (context, placeFormModel) 
                            => TextField(
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "Titel",
                              ),
                              onChanged: (title) {
                                placeFormModel?.setState(
                                      (state) => state.setTitle(title),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: defaultPadding,),
                          StateBuilder<PlaceFormModel>(
                            observe: () => _singletonPlaceFormModel,
                            builder: (context, placeFormModel) 
                            => TextField(
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "Beschreibung",
                              ),
                              onChanged: (description) {
                                placeFormModel?.setState(
                                      (state) => state.setDescription(description),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: defaultPadding * 1.5,),
                          Row(
                            children: [
                              Card(
                                child: InkWell(
                                    splashColor: Colors.blue.withAlpha(30),
                                    onTap: () {

                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Text("Strand", style: TextStyle(fontSize: 15.0),),
                                          SizedBox(width: 12.0,),
                                          Text("Strand", style: TextStyle(fontSize: 15.0),),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: defaultPadding * 1.5,),
                          (latlngState == null) ? Text(
                              "Wähle deinen Lieblingsort:"
                          ) : SizedBox(height: 0,),
                          SizedBox(height: defaultPadding * 0.3,),
                          StateBuilder<PlaceFormModel>(
                            observe: () => _singletonPlaceFormModel,
                            builder: (context, placeFormModel)
                            => (latlngState == null) ? LocationSelector(
                                latLngCallback: (latlng) {
                                  placeFormModel?.setState(
                                        (state) => state.setLatLng(latlng),
                                  );
                                  setState(() {
                                    latlngState = "Koordinaten festgelegt: \n\n" + latlng.toString();
                                  });
                                }
                            ) : DataLoadingText(text: latlngState!),
                          ),
                          SizedBox(height: defaultPadding * 1.5,),
                          ElevatedButton(
                              onPressed: () {
                                if (!_singletonPlaceFormModel.state.validateData()) {
                                showSnackbar(context: context, message: "Bitte valide Daten einfügen.");
                                } else {
                                  _singletonPlaceFormModel.setState(
                                    (state) async {
                                      placeRef.add(
                                          MyPlace(
                                            title: state.title!,
                                            description: state.description!,
                                            journey_id: widget.relatedJourney.id,
                                            latitude: state.latLng!.latitude,
                                            longitude: state.latLng!.longitude,
                                            category_id: category_id,
                                          )
                                      );
                                    }
                                  );
                                  widget.callback.call();
                                  Navigator.pop(context);
                                }
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
              );
            }
        )
    );
  }
}

class LocationSelector extends StatefulWidget {
  const LocationSelector({
    Key? key,
    required this.latLngCallback,
  }) : super(key: key);

  final Function(LatLng) latLngCallback;

  @override
  _LocationSelectorState createState() => _LocationSelectorState();
}

class _LocationSelectorState extends State<LocationSelector> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              ...['Karte', 'Adresse'].map((title) =>
                  Tab(
                    child: Text(title.toUpperCase(), style: TextStyle(
                        fontSize: 1.8 * SizeConfig.textMultiplier,
                        fontFamily: 'Nunito'
                    ),),
                  ),
              )
            ]),
        SizedBox(height: 10,),
        Container(
          height: 200,
          width: double.infinity,
          child: TabBarView(
              controller: tabController,
              children: <Widget>[
                ...SELECT_LOCATION_PAGES(
                    (latlng) => widget.latLngCallback.call(latlng),
                  ).map((place) => place.screen),
              ]),
        ),
      ],
    );
  }
}

