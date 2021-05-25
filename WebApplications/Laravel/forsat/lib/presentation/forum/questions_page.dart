import 'package:flutter/material.dart';
import 'package:forsat/network/state/forum_state.dart';
import 'package:forsat/res/images.dart';
import 'package:forsat/widgets/card_question.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage>
    with AutomaticKeepAliveClientMixin {
  
  final _forumStateRM = RM.get<ForumState>();

  ScrollController _scrollController;

  @override
  void didChangeDependencies() {
    _scrollController = ScrollController();
    _getQuestions();
    _scrollController.addListener(() {
      double _currentPosition = _scrollController.position.pixels;
      double _maxScrollExtent = _scrollController.position.maxScrollExtent;

      if (_currentPosition >= _maxScrollExtent &&
          !_forumStateRM.state.loading) {
        _getQuestions();
      }
    });
    super.didChangeDependencies();
  }

  void _getQuestions() {
    _forumStateRM.setState((questionState)
    => questionState.getAllQuestions());
  }
  
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
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...model.state.questions.map((question) =>
                          GestureDetector(
                            onTap: () {

                            },
                            child: QuestionCard(question: question,)
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        )
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
