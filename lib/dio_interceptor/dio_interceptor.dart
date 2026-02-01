
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;


class DioInterceptorsController extends GetxController {


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    dio.get('/products');
  }

  final Dio dio;
  DioInterceptorsController() : dio = Dio(
  BaseOptions(
  baseUrl: 'https://fakestoreapi.com',
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 3),
  ),
  ) {
  dio.interceptors.add(CustomInterceptorsClientDio());
  }
  }




class CustomInterceptorsClientDio extends Interceptor{


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
    // return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
    if(err.type == DioExceptionType.connectionTimeout){
      print("eror_at1; ${err.message}");
    }
    else if(err.type == DioExceptionType.receiveTimeout){
      print("eror_at2; ${err.message}");
    }
    else if(err.type == DioExceptionType.sendTimeout){
      print("eror_at3; ${err.message}");
    }
    else if(err.type == DioExceptionType.badResponse){
      print("eror_at4; ${err.message}");
    }
    else if(err.type == DioExceptionType.cancel){
      print("eror_at5; ${err.message}");
    }
    else if(err.type == DioExceptionType.connectionError){
      print("eror_at6; ${err.message}");
    }
    else{

      print("eror_at7; ${err.message}");
    }
  }

}
