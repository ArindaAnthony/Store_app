import 'package:http/http.dart' as http;
import 'package:store_app/consts.dart';
class ApiHandler{
  static Future<void> getAllProducts()async{
    //using https://api.escuelajs.co/api/v1/products
    var uri = Uri.http(BASE_URL, "/api/v1/products");
    var response = await http.get(uri);
  }
}