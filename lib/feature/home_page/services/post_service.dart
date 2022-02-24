import 'package:carbon_email/feature/home_page/model/post_model.dart';
import 'package:http/http.dart' as http;

class PostService {
  Future<List<PostModel>?> getPost() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    if (response.statusCode == 200) {
      return postModelFromJson(response.body);
    } else {
      throw Exception("Data not received");
    }
  }
}
