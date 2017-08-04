
class SellectionSort {
  
  int[] array;
  SellectionSort(int size) {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      array[i] = (int)random(0, 10); 
    }
  }
  void Sort() {
    for (int i = 0; i < array.length - 1; i++) {
       int least = i;
       for (int j = i + 1; j < array.length; j++) {
         if (array[j] < array[least]) {
            least = j;
         }
       }
       int temp = array[least];
       array[least] = array[i];
       array[i] = temp;
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