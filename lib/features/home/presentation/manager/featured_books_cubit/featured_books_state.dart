part of 'featured_books_cubit.dart';

sealed class BooksState extends Equatable {
  const BooksState();

  @override
  List<Object> get props => [];
}

final class BooksInitial extends BooksState {}

final class BooksLoading extends BooksState {}

final class BooksFailure extends BooksState {
  final String errorMessage;

  const BooksFailure(this.errorMessage);
}

final class BooksSuccess extends BooksState {
  final List<BookModel> books;

  const BooksSuccess(this.books);
  
}
