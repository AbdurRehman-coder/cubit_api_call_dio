

import 'package:bloc_rohit_semriwal/data/api/api.dart';
import 'package:bloc_rohit_semriwal/data/models/post_model.dart';
import 'package:dio/dio.dart';

class PostRepository {

  /// Create instance of API class
  API api = API();

  /// method that will fetch data from remote database & parse into data model
  Future<List<PostModel>> fetchPosts() async {
    try {
      Response postResponse = await api.dio.get('/posts');
      /// postResponse is a list of dynamic
      List<dynamic> posts = postResponse.data;
      List<PostModel> postsModel = posts.map((map) => PostModel.fromJson(map)).toList();
      return postsModel;
    } catch(error){
      throw error;
    }
  }
}