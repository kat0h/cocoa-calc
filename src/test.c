#include <stdio.h>
#include "calc.h"

int main(){
    printf("宣言:calcData mydata\n");
    calcData mydata;
    printf("calcInit(&mydata)\n");
    calcInit(&mydata);
    printf("setFirstNum 23.0\nsetSecondNum 34.0\n");
    setFirstNum(&mydata, 23.0);
    setSecondNum(&mydata, 34.0);
    division(&mydata);
    printf("result :%f\n", getResult(&mydata));
    printf("mydata.result: %f\n", getResult(&mydata)); 
    return 0;
}

