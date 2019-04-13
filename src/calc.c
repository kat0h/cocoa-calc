#include "calc.h"

int calcInit(calcData* data){
    data->result= 0;
    return 0; 
}

float getResult(calcData* data){
    return data->result;
}

float setResult(calcData* data, float setNum){
    data->result = setNum;
    return setNum;
}
