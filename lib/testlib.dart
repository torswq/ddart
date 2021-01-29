import 'sorting.dart';
import 'dart:math';
const ARRAY_MAX_LENGTH = 32;

List<int> generateIntList({bool randomLength:false}) {
  //rng = Random Number Generator
  final rng = new Random();
  final List<int> array = [];
  if (!randomLength) {
    for(var i=0; i<ARRAY_MAX_LENGTH+1; i++) {
      int random_number = rng.nextInt(256);
      array.add(random_number);
    }
  }
  else {
    final int random_array_length = rng.nextInt(9);
    for(var i=0; i<random_array_length+1; i++) {
      int random_number = rng.nextInt(256);
      array.add(random_number);
    }
  }
  return array;
}
List<List> generateListOfLists() {
  final List<List> list_of_lists = [];
  for (var i=0; i<10; i++) {
    list_of_lists.add(generateIntList(randomLength:true));
  }
  return list_of_lists;
}

///Test the whole library in one function.
void runTest() {
  print('Running tests...');
  print('-----------------');
  print('Sorting algorithm (int)');
  print(sortIntList([...generateIntList()]));
  print('OK\n');
  print('Sorting algorithm (List of Lists)');
  print(sortListOfLists(generateListOfLists()));
  print('OK\n');
}

