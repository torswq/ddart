import 'sorting.dart';
import 'dart:math';
const ARRAY_MAX_LENGTH = 255;

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
    final int random_array_length = rng.nextInt(ARRAY_MAX_LENGTH);
    for(var i=0; i<random_array_length+1; i++) {
      int random_number = rng.nextInt(256);
      array.add(random_number);
    }
  }
  return array;
}
List<List> generateListOfLists() {
  final List<List> list_of_lists = [];
  for (var i=0; i<ARRAY_MAX_LENGTH+1; i++) {
    
    list_of_lists.add(generateIntList());
  }
  return list_of_lists;
}

///Test the whole library in one function.
void runTest({bool noprint:false}) {
  print('Running tests...');
  print('-----------------');

  //Sorting test
  var benchmark = Stopwatch();
  print('Selectionsort algorithm (int)');

  benchmark.start();
  List<int> sorted_list = sortIntList([...generateIntList()], algorithm:'selection');
  benchmark.stop();

  if (!noprint) print(sorted_list);
  print('OK ${benchmark.elapsedMilliseconds}ms (${benchmark.elapsedMicroseconds}µs) elapsed'
        ', ordered ${sorted_list.length} elements\n');

  benchmark.reset();
  print('Selectionsort algorithm (List of Lists)');

  benchmark.start();
  List <List> sorted_list2 = sortListOfLists(generateListOfLists(), algorithm:'selection');
  benchmark.stop();

  if (!noprint) print(sorted_list2);
  print('OK ${benchmark.elapsedMilliseconds}ms (${benchmark.elapsedMicroseconds}µs) elapsed'
        ', ordered ${sorted_list2.length} elements\n');
  

  //Bubblesort test
  benchmark.reset();
  print('Bubblesort algorithm (int)');
  benchmark.start();
  final List<int> bubblesorted_list = sortIntList([...generateIntList()], algorithm:'bubblesort');
  benchmark.stop();

  if (!noprint) print(bubblesorted_list);
  print('OK ${benchmark.elapsedMilliseconds}ms - (${benchmark.elapsedMicroseconds}µs) elapsed'
        ', ordered ${bubblesorted_list.length} elements\n');
  benchmark.reset();

  print('Bubblesort algorithm (List of Lists)');
  benchmark.start();
  final List<List> bubblesorted_list2 = sortListOfLists(generateListOfLists(), algorithm:'bubblesort');
  benchmark.stop();

  if (noprint == false) print(bubblesorted_list2);
  print('OK ${benchmark.elapsedMilliseconds}ms (${benchmark.elapsedMicroseconds}µs) elapsed '
        ', ordered ${bubblesorted_list2.length} elements\n');
  
}

void main() => runTest(noprint:true);