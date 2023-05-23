import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/call_api/bloc/blocs/article_bloc.dart';
import 'package:flutter_bloc_example/call_api/bloc/state/article_state.dart';
import 'package:flutter_bloc_example/call_api/model/article_model.dart';

import 'bloc/event/article_event.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({Key? key}) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  @override
  void initState() {
    BlocProvider.of<ArticleBloc>(context).add(LoadArticleEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ArticleBloc,ArticleState>(
                builder: (context, state) {

                  if(state is ArticleLoadingState){
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: LinearProgressIndicator()),
                    );
                  }
                  if(state is LoadArticleErrorState){
                    return Text(state.errorMassage);
                  }
                  if(state is LoadArticleSuccessState){
                    List<ArticleModel> data = state.articleData;
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Directionality(
                            textDirection: TextDirection.rtl,
                            child: Container(
                              margin: const EdgeInsets.all(12),
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 10,
                                    offset: const Offset(0,5)
                                  )
                                ]
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 6),
                                    width: 90,
                                    color: Colors.red,
                                  ),
                                  Expanded(child: Text(data[index].title,maxLines: 2,)),
                                ],
                              )
                            ),
                          );
                        },
                    );
                  }
                  return Container();
                },
              ),


      ),
    );
  }
}
