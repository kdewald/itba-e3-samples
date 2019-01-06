#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  if (argc == 2) {
    int i = atoi(argv[1]);
    printf("%.1f\n", 2.3 * i);
  } else {
    printf("ERROR\n");
  }
  return 0;
}