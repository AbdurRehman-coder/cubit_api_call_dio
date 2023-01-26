

import 'package:bloc_rohit_semriwal/data/models/post_model.dart';
import 'package:bloc_rohit_semriwal/data/repository/post_repository.dart';
import 'package:bloc_rohit_semriwal/logic/cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<PostState>{
  PostsCubit() : super(PostLoadingState()){
    /// Call here inside Constructor body, to call the method
    fetchPosts();
  }

  PostRepository postRepository = PostRepository();

  void fetchPosts() async{
    try {
      List<PostModel> posts = await postRepository.fetchPosts();
      emit(PostLoadedState(posts));
    }catch(error){
      emit(PostErrorState(error.toString()));
    }
  }
}