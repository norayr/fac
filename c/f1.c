#include <stdio.h>

short const maxArg = 6;

int fac(int n) {
  if ( (n == 0) || (n == 1)  ){
    return 1;
  }
 else
  {
    return n * fac(n - 1);
  }
}


int main(){
  int result;
  short argument = 0;

  do {
    result = fac(argument); 
    printf("factorial of %i is %i\n", argument, result);
    argument += 1;
  } while (argument != maxArg);

}
