void main() {
  List<String> lista = ['Freddy', 'Jason'];

  print(lista[0]);

  Map<String, String> mapa = {'key': 'value'};

  print(mapa['key']);
  // Adding new values in map
  mapa.putIfAbsent('newKey', () => 'newValue');
  mapa['newKey2'] = 'New value 2';
  print(mapa);

  // Remove values
  mapa.remove('newKey2');
  print(mapa);

  // Update value
  mapa.update('newKey', (value) => 'newKeyUpdated');
  mapa.update('key', (value) => 'key 00000');
  print(mapa);

  mapa.forEach((key, value) {
    print('Chave eh: $key - E o valor eh $value');
  });
}
