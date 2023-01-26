

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class API {

  final Dio _dio = Dio();

  API(){
    /// Call these in constructor because we want to initials these values when API called
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
    _dio.interceptors.add(PrettyDioLogger());

  }

  /// getter for private _dio instance [to access it outside of this class]
   Dio get dio => _dio;
}