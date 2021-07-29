import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/model/link.dart';
import 'package:flutter_music_player_app/presentation/widgets/dialogs/add_link_dialog.dart';
import 'package:flutter_music_player_app/presentation/widgets/icon_fab.dart';
import 'package:flutter_music_player_app/presentation/widgets/link_widget.dart';
import 'package:flutter_music_player_app/utils/url_utils.dart';

import '../../network/constants.dart';

class LinkSubScreen extends StatefulWidget {
  LinkSubScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LinkSubScreenState createState() => _LinkSubScreenState();
}

class _LinkSubScreenState extends State<LinkSubScreen> {

  Future<QuerySnapshot<Link>> downloadData() async{
    return linkRef.get();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot<Link>>(
        future: downloadData(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Link>> snapshot) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5),
              child: SingleChildScrollView(
                child: (snapshot.data != null) ? Column(
                    children: [
                      SizedBox(height: defaultPadding,),
                      ...snapshot.data!.docs.map((snapshot) => LinkWidget(link: snapshot.data())),
                      // ...LINKS.map((link) =>
                      //     LinkWidget()
                      // )
                    ]
                ) : Center(
                  child: Text("Daten werden geladen..."),
                ),
              ),
            ),
            floatingActionButton: IconFloatingActionButton(
              iconData: Icons.add,
              callback: () {
                showDialog(context: context, builder: (BuildContext context) {
                  return AddLinkDialog(
                    callback: () {
                      setState(() {

                      downloadData();
                      });
                    }
                  );
                });
              },
            ),
          );
        }
    );
  }
}