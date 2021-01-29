List<int> sortingInt(final List<int> arr) {
  final int n = arr.length;
  for(var i=0; i<n-1; i++) {
    int min_index = i;
    for (int j=i+1; j<n; j++) {
      if (arr[j] < arr[min_index]) min_index = j;
    }
    int aux = arr[min_index];
    arr[min_index] = arr[i];
    arr[i] = aux;
  }
  return arr;
}

List<List> sortingListOfLists(final List<List> arr) {
  final int n = arr.length;
  for(var i=0; i<n-1; i++) {
    int min_index = i;
    for (int j=i+1; j<n; j++) {
      if (arr[j].length < arr[min_index].length) min_index = j;
    }
    dynamic aux = arr[min_index];
    arr[min_index] = arr[i];
    arr[i] = aux;
  }
  return arr;
}