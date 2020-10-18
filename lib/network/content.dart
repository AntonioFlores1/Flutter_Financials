import 'package:flutter_financials_app/model/usercontent.dart';
import 'package:http/http.dart' as http ;
import 'package:flutter_financials_app/secretfolder/secretkeys.dart';


Future<String> usersContent(String token) async {

  SecItem instance = SecItem();

  final String apiUrl = instance.contenturl;

  // Map<String, String> qParams = {
  //   'Instructions': 'instructions',
  //   'Link': 'link',
  // };;
final String updatedUrl = await apiUrl + token;
// '  https://postman-echo.com/get?Instructions=${{instructions}}&Link=${{link}}

  // final response = await http.get(updatedUrl, headers: {
  //   'Api-Version': instance.version,
  //   'Content-Type' : 'application/json',
  //   'Authorization': token,
  // });

  // if (response.statusCode == 201) {
  //   final String responseString = response.body;
  //   print(responseString);
    return updatedUrl;
//   } else {
//     print('Error Getting Users Info ${response.statusCode}');
//     return null;
//   }
}