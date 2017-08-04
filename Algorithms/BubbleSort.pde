
class BubbleSort {
  public int[] array;
  BubbleSort(int size) {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      array[i] = (int)random(0, 10); 
    }
  }
  void Sort() {
    for (int i = 0; i < array.length; i++) {
       boolean sorted = true;
       for (int j = 0; j < array.length - 1 - i; j++) {
         if (array[j] > array[j+1]) {
            sorted = false;
            int temp = array[j];
            array[j] = array[j+1];
            array[j+1] = temp;
         }
       }
       if (sorted == true) {
         break; 
       }
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