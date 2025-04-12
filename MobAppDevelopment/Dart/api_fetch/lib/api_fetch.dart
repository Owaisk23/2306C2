import 'package:http/http.dart' as HTTP;
import 'dart:convert' as CONVERT;

void main() async {
  print("API Fetch in Dart Programming");

  final API = Uri.parse('https://67d13a6e825945773eb37cfc.mockapi.io/dev/students');

  HTTP.get(API).then((response) {
    if (response.statusCode == 200) {
      final data = CONVERT.jsonDecode(response.body);
      // print(data);
      List<dynamic> studentsInfo = data;
      for (var student in studentsInfo) {
        print("Student Name: ${student['stdName']}");
        print("Student Avatar: ${student['avatar']}");
        print("Student Age: ${student['stdAge']}");
        print("================================================================");
      }
    
    }
 
  });


  // final Response = await HTTP.get(API);
  // print(Response.body);
}