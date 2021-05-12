import 'package:flutter_second/profile_app/profile.dart';
import 'package:flutter_second/quote_app/quotelist.dart';
import 'package:flutter_second/world_time_app/pages/choose_location.dart';
import 'package:flutter_second/world_time_app/pages/home.dart';
import 'package:flutter_second/world_time_app/pages/loading.dart';

import '../main.dart';

// for worldtime
const String WORLDTIME_LOADING = "/world_time/";


var routes = {
  WORLDTIME_LOADING : (context) => Loading(),
  '/world_time/home': (context) => Home(),
  '/world_time/location': (context) => ChooseLocation(),
  '/profile/': (context) => ProfileApp(),
  '/overview' : (context) => MyApp(),
  '/quotelist/': (context) => QuoteList()
};