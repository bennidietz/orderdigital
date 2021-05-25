import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forsat/network/classes/forum/question.dart';
import 'package:forsat/res/images.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key key, this.question}) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      "${question.createdBy.firstName} "
                          "${question.createdBy.lastName}",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("${question.createdBy.email}"),
                  ],
                )
            ),
            Text("2 days ago")
          ],
        ),
        SizedBox(height: 10,),
        Text(
          "${question.question}",
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
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
