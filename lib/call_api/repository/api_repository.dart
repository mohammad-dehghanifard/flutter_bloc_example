import 'package:dio/dio.dart';
import 'package:flutter_bloc_example/call_api/constants/api_constants.dart';
import 'package:flutter_bloc_example/call_api/model/article_model.dart';

class ApiRepository{
  final Dio _dio = Dio();


  Future<List<ArticleModel>> fetchArticleData() async {
    List<ArticleModel> articleListData = [];
    await _dio.get(ApiConstants.newArticle).then((response) {
      if(response.statusCode == 200){
        for(var it in response.data){
            articleListData.add(ArticleModel.fromJson(it));
        }
      }
    } );
    return articleListData;
  }

}