import 'package:bookly/Feature/home/presentation/Views/widgets/best_siler_item.dart';
import 'package:bookly/Feature/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../data/models/book_models/book_model.dart';

class BestSillerListView extends StatelessWidget {
   BestSillerListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit,NewsetBooksState>(builder:(context, state) {

       if(state is NewsetBooksSuccess){
         return
         ListView.builder(
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
           padding: EdgeInsets.zero,
           itemBuilder: (context, index) {
             return Padding(
               padding:  EdgeInsets.symmetric(vertical: 10),
               child: BestSilerViewItem(bookModel:state.books[index],
               ),
             );
           },
           itemCount: state.books.length,
         );
       }else if (state is NewsetBooksFailure) {
         return CustomErrorWidget(errMessage: state.errMessage);
       } else {
         return const CustomLoadingIndicator();
       }
    },);

  }
}
