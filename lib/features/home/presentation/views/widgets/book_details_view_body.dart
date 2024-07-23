import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'books_details_section.dart';
import 'custom_book_details_view_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsViewAppBar(),
          BookDetailsSection(),
          Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          SimilarBooksSection(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}


