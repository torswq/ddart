import 'src/sortingAlgorithms.dart';

List<int> sortIntList(List<int> arr, {String algorithm: 'sorting'}) {
  if (algorithm == 'sorting') return sortingInt(arr);
  else print('The algorithm $algorithm is invalid or not supported yet');
  return [0];
}

List<List> sortListOfLists(List<List> arr, {String algorithm: 'sorting'}) {
  if (algorithm == 'sorting') return sortingListOfLists(arr);
  else print('The algorithm $algorithm is invalid or not supported yet');
  return [[]];
}