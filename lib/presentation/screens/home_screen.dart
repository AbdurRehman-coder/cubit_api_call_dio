
import 'package:bloc_rohit_semriwal/logic/cubit/post_cubit.dart';
import 'package:bloc_rohit_semriwal/logic/cubit/post_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyListWidget extends StatefulWidget {
  const MyListWidget({super.key});

  @override
  _MyListWidgetState createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget> {
  List<String> items = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: BlocBuilder<PostsCubit, PostState>(
      builder: (context, state){
        if(state is PostLoadingState) {
          return Center(
            child: CupertinoActivityIndicator(),
          );
        } else if(state is PostLoadedState){
        return ListView.builder(
          itemCount: state.posts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.posts[index].title.toString()),
              subtitle: Text(state.posts[index].body.toString(),
              style: TextStyle(fontSize: 12, color: Colors.black54),),
            );
          },
        );
        } else{
          return Container();
        }
      }
      ),
    );
  }
}