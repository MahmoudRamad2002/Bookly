import 'package:bookly/Feature/home/presentation/Views/widgets/best_siler_item.dart';
import 'package:flutter/material.dart';

class BestSillerListView extends StatelessWidget {
  const BestSillerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSilerViewItem(),
        );
      },
      itemCount: 5,
    );
  }
}
