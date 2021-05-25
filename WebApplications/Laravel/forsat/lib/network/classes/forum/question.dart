import 'package:forsat/network/classes/auth/user.dart';
import 'package:forsat/network/classes/forum/comment.dart';

class Question {
  final String question;
  final User createdBy;
  final List<Comment> comments;

  Question.fromJson(Map<String, dynamic> jsonMap):
      question = jsonMap['question'] ?? "",
      createdBy = User.fromJson(jsonMap['createdBy']),
      comments = _getComments(jsonMap['comments']) ;

  static List<Comment> _getComments(List<dynamic> comments) {
    /*if (comments == null)*/ return [];
    return comments.map((e) => Comment.fromJson(e)).toList();
  }
}