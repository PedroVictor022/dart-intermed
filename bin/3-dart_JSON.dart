import 'dart:convert';

void main() {
  String json = '''
  {
    "usuario": "fulano@mail.com",
    "senha": 1234,
    "permissoes": [
      "owner", "admin"
    ]
  } 
  ''';

  print(json);
  var resultJson = jsonDecode(json);
  var jsonUser = resultJson['usuario'];
  var jsonPassword = resultJson['senha'];
  print('$jsonUser $jsonPassword');
  print(resultJson["permissoes"]);
  print(resultJson["permissoes"][0]);

  // Transform obj in JSON

  Map mapa = {
    'name': 'Victor',
    'pass': 1234,
    'permissions': ['owner', 'admin']
  };

  var jsonConvert = jsonEncode(mapa);

  print(jsonConvert);
}
