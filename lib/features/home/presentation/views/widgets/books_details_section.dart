import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(imageUrl:'https://th.bing.com/th?id=OIP.q-WbOppbeX6z3TIDKvHpbgHaNS&w=186&h=334&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'the jungle book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 37,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: BookAction(),
        ),
      ],
    );
  }
}
