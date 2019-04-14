//
//  ViewController.swift
//  calc
//
//  Created by 加藤滉太 on 4/13/31 H.
//  Copyright © 31 Heisei peony. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var data = calcData(result:0, firstNum:0, secondNum :0)
    var nowInputDataNum = 1
    var nowInputData:Float = 0.0
    var calcOperator:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcInit(&data)
        displayRefresh()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func ACButton(_ sender: Any) {
        nowInputData=0
        nowInputDataNum=1
        calcOperator=0
        calcInit(&data)
        displayRefresh()
    }
    @IBAction func CButton(_ sender: Any) {
        if nowInputDataNum==1{
            nowInputData=0
            setFirstNum(&data, 0.0)
        }else{
            nowInputData=0
            setSecondNum(&data, 0.0)
        }
        displayRefresh()
    }
    @IBAction func PlusOrMinusButton(_ sender: Any) {
        nowInputData=nowInputData * -1
        displayRefresh()
    }
    @IBAction func PlusButton(_ sender: Any) {
        if nowInputDataNum==1{
            setFirstNum(&data, nowInputData)
            nowInputDataNum=2
            calcOperator=1
            nowInputData=0
            displayRefresh()
        }
    }
    @IBAction func MinusButton(_ sender: Any) {
        if nowInputDataNum==1{
            setFirstNum(&data, nowInputData)
            nowInputDataNum=2
            calcOperator=2
            nowInputData=0
            displayRefresh()
        }
    }
    @IBAction func AsteliskButton(_ sender: Any) {
        if nowInputDataNum==1{
            setFirstNum(&data, nowInputData)
            nowInputDataNum=2
            calcOperator=3
            nowInputData=0
            displayRefresh()
        }
    }
    @IBAction func SlashButton(_ sender: Any) {
        if nowInputDataNum==1{
            setFirstNum(&data, nowInputData)
            nowInputDataNum=2
            calcOperator=4
            nowInputData=0
            displayRefresh()
        }
    }
    @IBAction func EqualButton(_ sender: Any) {
        switch calcOperator {
        case 1:
            setSecondNum(&data, nowInputData)
            addition(&data)
        case 2:
            setSecondNum(&data, nowInputData)
            subtraction(&data)
        case 3:
            setSecondNum(&data, nowInputData)
            multiplication(&data)
        case 4:
            setSecondNum(&data, nowInputData)
            division(&data)
        default:
            print("a")
        }
        let resultnum=getResult(&data)
        nowInputData=0
        nowInputDataNum=1
        calcOperator=0
        calcInit(&data)
        setFirstNum(&data, resultnum)
        nowInputData=resultnum
        displayRefresh()
    }
    @IBAction func DotButton(_ sender: Any) {
    }
    @IBAction func OneButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 1, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func TwoButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 2, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func ThreeButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 3, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func FourButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 4, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func FiveButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 5, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func SixButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 6, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func SevenButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 7, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func EightButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 8, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func NineButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 9, nowdata: nowInputData)
        displayRefresh()
    }
    @IBAction func ZeroButton(_ sender: Any) {
        nowInputData=pushNumButton(num: 0, nowdata: nowInputData)
        displayRefresh()
    }
    
    func pushNumButton(num:Int, nowdata:Float) -> Float{
        return nowdata*10.0+Float(num)
    }
    
    @IBOutlet weak var displayLabel: NSTextField!
    func displayRefresh(){
        displayLabel.stringValue = String(nowInputData)
    }
    
}

