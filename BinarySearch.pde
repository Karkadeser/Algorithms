
class BinarySearch {
  int[] array;
  BinarySearch(int size) {
    MergeSort mSort = new MergeSort(size);
    mSort.Sort();
    array = mSort.array; 
  }
  boolean Search(int value) {
    int left = 0;
    int right = array.length;
    while (right - left != 1) {
      int middle = (left + right) / 2;
      if (value == array[middle]) {
         return true;
      }
      if (value < array[middle])
        right = middle;
      else
        left = middle;
    }
    if (right - left == 1 && value == array[(left + right) / 2])
      return true;
    return false;
  }
  
  String GetArray() {
     String line = "";
     for (int i = 0; i < array.length; i++) {
       line += array[i] + " "; 
     }
     return line;
  }
  
}