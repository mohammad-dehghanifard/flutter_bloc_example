import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/call_api/bloc/event/article_event.dart';
import 'package:flutter_bloc_example/call_api/bloc/state/article_state.dart';
import 'package:flutter_bloc_example/call_api/repository/api_repository.dart';

class ArticleBloc extends Bloc<ArticleEvent,ArticleState>{
   final ApiRepository _repository = ApiRepository();
  ArticleBloc() : super(ArticleLoadingState()){
   on<LoadArticleEvent>((event, emit) async {
     emit(ArticleLoadingState());
     final data = await _repository.fetchArticleData();
     if(data.isNotEmpty){
       emit(LoadArticleSuccessState(data));
     }else{
       emit(LoadArticleErrorState());
     }
   });
  }

}