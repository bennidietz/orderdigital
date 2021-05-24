import 'package:dio/dio.dart';
import 'package:forsat/network/classes/common/pagination.dart';
import 'package:forsat/network/classes/errors/common_error.dart';
import 'package:forsat/network/classes/forum/question.dart';
import 'package:forsat/network/classes/forum/questions.dart';
import 'package:forsat/network/storage/local_storage.dart';
import 'package:forsat/network/storage/storage_keys.dart';

import '../forsat_api.dart';

abstract class ForumRepository {
   Future<Questions> getAllQuestions(int page);
}

class ForumRepositoryImpl implements ForumRepository{

  @override
  Future<Questions> getAllQuestions(int page) async {
    try {
      final response = await ForsatAPI.dio.get('/api/questions?page=$page',
          options: Options(headers: {
            'Authorization': 'Bearer ${LocalStorage.getItem(TOKEN)}'
          })
      );
      List _temp = response.data['data'];
      var _meta = response.data['meta'];

      Pagination _pagination = Pagination.fromJson(_meta);
      
      List<Question> _questions = _temp.map((question)
        => Question.fromJson(question)
      ).toList();
      return Questions(
          questions: _questions,
          pagination: _pagination
      );
    } on DioError catch (e) {
      throw showNetworkError(e);
    }
  }

}

