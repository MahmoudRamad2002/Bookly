import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:bookly/Feature/home/presentation/manger/similer_books_cubit/similar_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(builder: (context, state) {
      if(state is SimilarBooksSuccess){
        return SizedBox(
          height: MediaQuery.of(context).size.height*.15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5),
                child: CustomListView(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',),
              );
            },

          ),
        );
      }
      else if(state is SimilarBooksFailure){
        return CustomErrorWidget(errMessage: state.errMessage);
      }
      else{
        return CircularProgressIndicator();
      }
    },);


  }
}

