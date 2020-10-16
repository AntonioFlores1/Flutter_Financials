import 'package:flutter_financials_app/model/usermodel.dart';
import 'package:http/http.dart' as http ;
import 'package:flutter_financials_app/secretfolder/secretkeys.dart';


Future<UserToken> createToken(String clientId, String secret ) async {

  SecItem instance = SecItem();

  final String apiUrl = instance.url;

  final response = await http.post(apiUrl, body: {
    'clientId': instance.id,
    'secret': instance.secretid
  } , headers: {'Api-Version': instance.version,
    'loginName': instance.logname,
  });

  if (response.statusCode == 201) {
    final String responseString = response.body;
    print(responseString);
    return userTokenFromJson(responseString);
  } else {
    return null;
  }
}