
class LinearSearch {
  
  int[] array;
  LinearSearch(int size) {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      array[i] = (int)random(0, 10); 
    }  
  }
  boolean Search(int value) {
    for (int i = 0; i < array.length; i++) {
      if (array[i] == value)
        return true;
    }
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