import 'lib/sorting.dart';
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
  print('Selectionsort algorithm (int list)');

  benchmark.start();
  List<int> selection_list = sortIntList([...generateIntList()], algorithm:'selection');
  benchmark.stop();

  if (!noprint) print(selection_list);
  print('OK ${benchmark.elapsedMilliseconds}ms (${benchmark.elapsedMicroseconds}µs) elapsed'
        ', ordered ${ARRAY_MAX_LENGTH+1} elements\n');

  benchmark.reset();
  print('Selectionsort algorithm (List of Lists)');

  benchmark.start();
  List <List> selection_list2 = sortListOfLists(generateListOfLists(), algorithm:'selection');
  benchmark.stop();

  if (!noprint) print(selection_list2);
  print('OK ${benchmark.elapsedMilliseconds}ms (${benchmark.elapsedMicroseconds}µs) elapsed'
        ', ordered ${ARRAY_MAX_LENGTH+1} elements\n');
  

  //Bubblesort test
  benchmark.reset();
  print('Bubblesort algorithm (int list)');
  benchmark.start();
  final List<int> bubble_list = sortIntList([...generateIntList()], algorithm:'bubblesort');
  benchmark.stop();

  if (!noprint) print(bubble_list);
  print('OK ${benchmark.elapsedMilliseconds}ms - (${benchmark.elapsedMicroseconds}µs) elapsed'
        ', ordered ${ARRAY_MAX_LENGTH+1} elements\n');
  benchmark.reset();

  print('Bubblesort algorithm (List of Lists)');
  benchmark.start();
  final List<List> bubble_list2 = sortListOfLists(generateListOfLists(), algorithm:'bubblesort');
  benchmark.stop();

  if (noprint == false) print(bubble_list2);
  print('OK ${benchmark.elapsedMilliseconds}ms (${benchmark.elapsedMicroseconds}µs) elapsed '
        ', ordered ${ARRAY_MAX_LENGTH+1} elements\n');

  
  //Insertion sort
  benchmark.reset();
  print('Insertionsort algorithm (int list)');
  benchmark.start();
  final List<int> insertion_list = sortIntList([...generateIntList()], algorithm:'insertion');
  benchmark.stop();

  if (!noprint) print(insertion_list);
  print('OK ${benchmark.elapsedMilliseconds}ms - (${benchmark.elapsedMicroseconds}µs) elapsed'
        ', ordered ${ARRAY_MAX_LENGTH+1} elements\n');
  benchmark.reset();

  print('Insertionsort algorithm (List of Lists)');
  benchmark.start();
  final List<List> insertion_list2 = sortListOfLists(generateListOfLists(), algorithm:'insertion');
  benchmark.stop();

  if (noprint == false) print(insertion_list2);
  print('OK ${benchmark.elapsedMilliseconds}ms (${benchmark.elapsedMicroseconds}µs) elapsed '
        ', ordered ${ARRAY_MAX_LENGTH+1} elements\n');
}

void main() => runTest(noprint:true);