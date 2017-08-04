
class InsertionSort {
  
  int[] array;
  InsertionSort(int size) {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      array[i] = (int)random(0, 10); 
    }
  }
  void Sort() {
    for (int i = 1; i < array.length; i++) {
      int idx = i;
      for (int j = i - 1; j >= 0; j--) {
        if (array[i] < array[j]) {
           idx = j;
        } else {
          break; 
        }
      }
      int temp = array[i];
      for (int j = i; j > idx; j--) {
        array[j] = array[j-1];
      }
      array[idx] = temp;
    }
  }
  String GetArray() {
     String line = "";
     for (int i = 0; i < array.length; i++) {
       line += array[i] + " "; 
     }
     return line;
  }
  
}