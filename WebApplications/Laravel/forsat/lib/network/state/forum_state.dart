import 'package:forsat/network/classes/common/pagination.dart';
import 'package:forsat/network/classes/forum/question.dart';
import 'package:forsat/network/classes/forum/questions.dart';
import 'package:forsat/network/repositories/forum_repository.dart';
import 'package:forsat/utils/helper.dart';

class ForumState {
  final ForumRepository _forumRepository;

  ForumState(this._forumRepository);

  List<Question> _questions = [];
  List<Question> get questions => _questions;

  Pagination _pagination;
  bool _loading = false;
  bool get loading => _loading;

  Future getAllQuestions() async {
    if (Helper.paginationFetchNext(this._pagination).fetchNext) {
      _loading = true;
      Questions _newQuestions =
      await _forumRepository.getAllQuestions(
          Helper.paginationFetchNext(this._pagination).currentPage);
      _questions.addAll(_newQuestions.questions);
      _pagination = _newQuestions.pagination;
      _loading = false;
    }
  }
}