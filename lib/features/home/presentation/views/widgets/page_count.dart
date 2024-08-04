import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class PageCountWidget extends StatelessWidget {
  const PageCountWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Text(
            "${bookModel.volumeInfo.pageCount}",
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xff707070),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "page",
            style: Styles.textStyle14.copyWith(
              color: const Color(0xff707070),
            ),
          ),
        ],
      ),
    );
  }
}
