
class Factorial {
 
  int factorial;
  Factorial(int value) {
    factorial = TreeMult(2, value);   
  }
  int TreeMult(int left, int right)
  {
    if (left == right)
      return left;
    if (right - left == 1)
      return left * right;
    int middle = (left + right) / 2;
    int half1 = TreeMult(left, middle);
    int half2 = TreeMult(middle + 1, right);
    return half1 * half2;
  }
  
}