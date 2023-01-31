void main(List<String> args) {
  int n1 = 2;
  List<int> numbers = List.filled(3, 0, growable: false);
  numbers[0] = 4;
  numbers[1] = 1;
  print(numbers);
  print(numbers.length);
  print(numbers[2]);
  List<String> names = List.filled(5, "");
  names[0] = "Berkay";
  names[1] = 10.toString();
  names[2] = "Zafer";
  names[3] = "Adana";
  names[4] = "Antalya";

  print(names);

  List mixedValue = List.filled(3, 0); //default dynamic
  mixedValue[0] = 1;
  mixedValue[1] = "Berkay";
  mixedValue[2] = false;
  print(mixedValue);

  for (int i = 0; i < numbers.length; i++) {
    numbers[i]++;
    print(numbers[i]);
  }
  print("******************");
  for (String namesReads in names) {
    print(namesReads);
  }
}
