
class FibonacciNumber {
  
 FibonacciNumber() {
   
 }
 int Find(int value) {
   int a = 0;
   int b = 1;
   for (int i = 0; i < value; i++) {
     int c = b;
     b += a;
     println(b);
     a = c;
   }
   return b;
 }
  
}