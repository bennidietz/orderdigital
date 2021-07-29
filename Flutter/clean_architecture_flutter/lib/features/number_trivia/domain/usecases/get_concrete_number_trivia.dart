import 'package:clean_architecture_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteNumberTrivia {

 final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failture, NumberTrivia>> execute({
   required int number
  }) async {
  return await repository.getConcreteNumberTrivia(number);
  }
}