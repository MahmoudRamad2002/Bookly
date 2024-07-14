import 'package:bookly/Feature/home/presentation/Views/widgets/book_details_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}