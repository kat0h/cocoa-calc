#include "calc.h"

int calcInit(calcData* data){
    data->result=0;
    data->firstNum=0;
    data->secondNum=0;
    return 0;
}

float getResult(calcData* data){
    return data->result;
}


//Hello

float setFirstNum(calcData* data, float num){
    data->firstNum=num;
    return num;
}

float setSecondNum(calcData* data, float num){
    data->secondNum=num;
    return num;
}

int addition(calcData* data){
    data->result=data->firstNum+data->secondNum;
    return 0;
}
int subtraction(calcData* data){
    data->result=data->firstNum-data->secondNum;
    return 0;
}
int multiplication(calcData* data){
    data->result=data->firstNum*data->secondNum;
    return 0;
}

int division(calcData* data){
    if (data->firstNum==0){
        return -1;
    }
    data->result=data->firstNum/data->secondNum;
    return 0;
}
