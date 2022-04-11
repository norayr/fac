#include <stdio.h>

short const maxArg = 6;

int fac(int n) {
  int i, res;
  res = 1;

  for (i=1; i <= n; i++) {
    res = res * i;
  }
  return res;
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
