/*==================
  calc.h
  ================== */ 
/*
 * 基本的な使い方
 * setFirstNum -> setSecondNum -> 演算用関数 -> getResult
 */
#ifndef CALC_H
#define CALC_H

typedef struct {
    float result; 
    float firstNum;
    float secondNum;
} calcData;

/*
 * 関数名 calcInit
 * 引数   calcData&
 * 戻り値 int
 * calcDataを初期化します。
 * 成功すると戻り値0を返します。
 */
int calcInit(calcData* data);

/*
 * 関数名 getResult
 * 引数   calcData&
 * 戻り値 float
 * ゲッター
 */
float getResult(calcData* data);

//セッター
float setFirstNum(calcData* data, float num); 
float setSecondNum(calcData* data, float num);

//計算
int addition(calcData* data);
int subtraction(calcData* data);
int multiplication(calcData* data);
int division(calcData* data);

#endif
