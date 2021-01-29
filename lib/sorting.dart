import 'src/sortingAlgorithms.dart';

List<int> sortIntList(List<int> arr, {String algorithm:'selection'}) {
  if (algorithm == 'selection') return selectionIntList(arr);
  else if(algorithm == 'bubblesort') return bubblesortIntList(arr);
  else print('The algorithm $algorithm is invalid or not supported yet');
  return [0];
}

List<List> sortListOfLists(List<List> arr, {String algorithm:'selection'}) {
  if (algorithm == 'selection') return selectionListOfLists(arr);
  else if(algorithm == 'bubblesort') return bubblesortListOfLists(arr);
  else print('The algorithm $algorithm is invalid or not supported yet');
  return [[]];
}