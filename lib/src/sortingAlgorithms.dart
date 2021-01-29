//----== Sorting ==----
List<int> selectionIntList(final List<int> arr) {
  final int n = arr.length;
  for(int i=0; i<n-1; i++) {
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

List<List> selectionListOfLists(final List<List> arr) {
  final int n = arr.length;
  for(int i=0; i<n-1; i++) {
    int min_index = i;
    for (int j=i+1; j<n; j++) {
      if (arr[j].length < arr[min_index].length) min_index = j;
    }
    List aux = arr[min_index];
    arr[min_index] = arr[i];
    arr[i] = aux;
  }
  return arr;
}

//----== Bubblesort ==----
List<int> bubblesortIntList(final List<int> arr) {
  for (int i=1;i<arr.length; i++) {
      for (int i=1;i<arr.length; i++) {
        if (arr[i-1] > arr[i]) {
          int aux = arr[i];
          arr[i] = arr[i-1];
          arr[i-1] = aux;
        }
      }
    }
  return arr;
}

List<List> bubblesortListOfLists(final List<List> arr) {
  for (int i=1;i<arr.length; i++) {
      if ((arr[i-1].length > arr[i].length)) {
        for (int i=1;i<arr.length; i++) {
        if (arr[i-1].length > arr[i].length) {
          List aux = arr[i];
          arr[i] = arr[i-1];
          arr[i-1] = aux;
          }
        }
      }
    }
  return arr;
}
