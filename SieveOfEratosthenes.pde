
class SieveOfEratosthenes {
  
  boolean[] array;
  SieveOfEratosthenes(int size) {
    array = new boolean[size+1];
    for (int i = 0; i <= size; i++) {
      array[i] = true;
    }
    for (int i = 2; i*i <= size; i++) {
       if (array[i] == true) {
          for (int j = i * i; j <= size; j += i) {
             array[j] = false;
          }
       }
    }
  }
 
  int Find(int value) {
    if (value >= array.length)
      return -1;
    int counter = 0;
    for (int i = 2; i < array.length; i++) {
       if (array[i] == true) {
          counter += 1;
          if (counter == value)
            return i;
       }
    }
    return -1;
 }
    
}