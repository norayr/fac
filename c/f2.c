#include <stdio.h>

#define maxArg 6

int fac(int n) {
  
  int fac0(int n, int r){
    int w;

    if ((n == 0) || (n == 1) ){
      w = r;
    }
   else
    {
      w = fac0(n - 1, n * r);
    }
  }

  return fac0(n, 1);
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
