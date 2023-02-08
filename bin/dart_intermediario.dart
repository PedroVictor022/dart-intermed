// Future, async e await

void main() async {
  String name = "Pedro";
  Future<String> cepFuture = getCepByName("Rua JK");
  late String cep;

  cepFuture.then((data) => {cep = data, print('$cep -- $data')});

  cep = await cepFuture;
  print(cep);
}

// External service

Future<String> getCepByName(String locationName) {
  return Future.value("00000-000");
}
