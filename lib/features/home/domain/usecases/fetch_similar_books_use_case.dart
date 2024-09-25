import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';

class FetchSimilarBooksUseCase extends UseCase<List<BookEntity>,String> {
  final HomeRepo homeRepo;

  FetchSimilarBooksUseCase(this.homeRepo);

  

  @override
  Future<Either<Failure, List<BookEntity>>> call([String? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
