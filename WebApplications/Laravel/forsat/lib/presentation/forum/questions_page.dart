import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
          controller: _scrollController,
          child: StateBuilder<ForumState>(
            observe: () => _forumStateRM,
            builder: (context, model) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    ...model.state.questions.map(
                          (question) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, questionDetail,
                              arguments: question);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              CreatedByInfoWidget(
                                fullName:
                                "${question.createdBy.firstName} ${question.createdBy.lastName}",
                                email: "${question.createdBy.email}",
                                createdAt: "2 days ago",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${question.question}",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
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
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
