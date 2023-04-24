import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_example/call_api/model/article_model.dart';

abstract class ArticleState extends Equatable{}

class ArticleLoading extends ArticleState{
  @override
  List<Object?> get props => [];
}

class LoadArticleError extends ArticleState{
  late final String errorMassage;
  @override
  List<Object?> get props => [errorMassage];
}

class LoadArticleSuccess extends ArticleState{
  late final List<ArticleModel> articleData;
  @override
  List<Object?> get props => [articleData];
}