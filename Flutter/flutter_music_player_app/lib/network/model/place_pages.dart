import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/presentation/miniview/mini_map.dart';
import 'package:flutter_music_player_app/presentation/subscreen/dream_travels_list.dart';
import 'package:flutter_music_player_app/presentation/subscreen/ideas_list.dart';
import 'package:flutter_music_player_app/presentation/subscreen/link_list.dart';
import 'package:flutter_music_player_app/presentation/subscreen/pack_list.dart';
import 'package:flutter_music_player_app/presentation/subscreen/places_list.dart';
import 'package:flutter_music_player_app/presentation/subscreen/planned_journey_list.dart';

class TabLayout {
  final Widget screen;
  final String title;

  TabLayout(this.screen, this.title);
}

List<TabLayout> PLACE_PAGES = [
  TabLayout(PlacesListSubScreen(), "Orte"),
  TabLayout(PackListSubScreen(), "Packliste"),
  TabLayout(IdeasSubScreen(), "Ideen"),
  TabLayout(LinkSubScreen(), "Links"),
];

List<TabLayout> SELECT_LOCATION_PAGES = [
  TabLayout(MiniMap(height: 100,), "Karte"),
  TabLayout(Text("Hallo"), "Adresse"),
];

List<TabLayout> DIFFERENT_JOUNEY_TYPES = [
  TabLayout(PlannedJourneyScreen(), "Geplante Reise"),
  TabLayout(DreamTravelsScreen(), "TRÄUME"),
];