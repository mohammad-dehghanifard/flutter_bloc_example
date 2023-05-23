import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_example/call_api/model/article_model.dart';

abstract class ArticleState extends Equatable{}

class ArticleLoadingState extends ArticleState{
  @override
  List<Object?> get props => [];
}

class LoadArticleErrorState extends ArticleState{
  late final String errorMassage;
  @override
  List<Object?> get props => [errorMassage];
}

class LoadArticleSuccessState extends ArticleState{
  final List<ArticleModel> articleData;
  LoadArticleSuccessState(this.articleData);
  @override
  List<Object?> get props => [articleData];
}