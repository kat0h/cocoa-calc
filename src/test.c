#include <stdio.h>
#include "calc.h"

int main(){
    printf("宣言:calcData mydata\n");
    calcData mydata;
    printf("calcInit(&mydata)\n");
    calcInit(&mydata);
    printf("setResult(&mydata, 1.20)\n");
    setResult(&mydata, 1.20);
    printf("mydata.firstNum : %f\n", getResult(&mydata)); 
    return 0;
}

