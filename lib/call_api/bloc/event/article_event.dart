import 'package:equatable/equatable.dart';

abstract class ArticleEvent extends Equatable{}


class LoadArticleEvent extends ArticleEvent{
  @override
  List<Object?> get props => [];
}