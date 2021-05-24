#include <stdio.h>

void objetosc()
{    
    int a, h;

    printf("Podaj dlugosc boku: \n");
    scanf("%d", &a);
    printf("Podaj wysokosc: \n");
    scanf("%d", &h);
    int v = a * a * h;
    printf("Objetosc szescianu: %d \n", v);
}