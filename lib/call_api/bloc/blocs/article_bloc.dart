import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/call_api/bloc/event/article_event.dart';
import 'package:flutter_bloc_example/call_api/bloc/state/article_state.dart';
import 'package:flutter_bloc_example/call_api/repository/api_repository.dart';

class ArticleBloc extends Bloc<ArticleEvent,ArticleState>{
  late final ApiRepository _repository;
  ArticleBloc(this._repository) : super(ArticleLoadingState()){
   on<LoadArticleEvent>((event, emit) async {
     emit(ArticleLoadingState());
     final data = await _repository.fetchArticleData();
     if(data.isNotEmpty){
       emit(LoadArticleSuccessState());
     }else{
       emit(LoadArticleErrorState());
     }
   });
  }

}