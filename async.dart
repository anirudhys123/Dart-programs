Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2)); // Simulate API call
  print('Data loaded!');
}

void main() async {
  await fetchData();
  print('Program complete!');
}
