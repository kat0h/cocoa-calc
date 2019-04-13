/*==================
  calc.h
  ================== */ 

#ifndef CALC_H
#define CALC_H

typedef struct {
    float result; 
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

/*
 * 関数名 setResult
 * 引数   calcData&, float
 * 戻り値 float
 * セッター
 * セットした値を返す
 */
float setResult(calcData* data, float setNum);

#endif
