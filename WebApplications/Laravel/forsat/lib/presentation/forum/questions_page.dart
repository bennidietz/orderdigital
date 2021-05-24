import 'package:flutter/material.dart';
import 'package:forsat/res/images.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage>
    with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions Page"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(MyImages.logo_solid),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Christian Terbeck",
                              style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("mail@mail.de"),
                          ],
                        )
                      ),
                      Text("2 days ago")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Dies ist irgendein längerer Text.",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
