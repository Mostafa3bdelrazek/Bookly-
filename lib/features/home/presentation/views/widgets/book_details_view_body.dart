import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'books_details_section.dart';
import 'custom_book_details_view_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsViewAppBar(),
          BookDetailsSection(bookModel: bookModel,),
          const Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          SimilarBooksSection(bookModel: bookModel,),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
