import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: CustomBookImage(imageUrl: 'https://th.bing.com/th?id=OIP.q-WbOppbeX6z3TIDKvHpbgHaNS&w=186&h=334&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',),
      ),
    );
  }
}
