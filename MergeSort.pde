
class MergeSort {
  
  int[] array;
  MergeSort(int size) {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      array[i] = (int)random(0, 10); 
    }
  }
  void Sort() {
    array = MSort(array);
  }
  int[] MSort(int[] arr) {
    if (arr.length == 1)
      return arr;
    int halfSize = arr.length / 2;
    int[] half1 = new int[halfSize];
    int[] half2 = new int[arr.length - halfSize];
    for (int i = 0; i < halfSize; i++) {
      half1[i] = arr[i]; 
    }
    for (int i = halfSize; i < arr.length; i++) {
      half2[i-halfSize] = arr[i]; 
    }
    half1 = MSort(half1);
    half2 = MSort(half2);
    int[] ans = new int[arr.length];
    int i = 0;
    int j = 0;
    int idx = 0;
    while (i < half1.length && j < half2.length) {
      if (half1[i] < half2[j]) {
        ans[idx] = half1[i];
        i += 1;
      } else {
        ans[idx] = half2[j];
        j += 1;
      }
      idx += 1;
    }
    while (i < half1.length) {
      ans[idx] = half1[i];
      i += 1;
      idx += 1;
    }
    while (j < half2.length) {
      ans[idx] = half2[j];
      j += 1;
      idx += 1;
    }
    return ans;
  }
  String GetArray() {
     String line = "";
     for (int i = 0; i < array.length; i++) {
       line += array[i] + " "; 
     }
     return line;
  }
  
}