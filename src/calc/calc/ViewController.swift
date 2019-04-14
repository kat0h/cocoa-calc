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
    var dotPlace:Float=0
    
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
        dotPlace=0
        calcInit(&data)
        displayRefresh()
    }
    @IBAction func CButton(_ sender: Any) {
        if nowInputDataNum==1{
            setFirstNum(&data, 0.0)
        }else{
            setSecondNum(&data, 0.0)
        }
        nowInputData=0
        dotPlace=0
        displayRefresh()
    }
    @IBAction func PlusOrMinusButton(_ sender: Any) {
        nowInputData=nowInputData * -1
        displayRefresh()
    }
    func setOperator(op:Int){
        if nowInputDataNum==1{
            setFirstNum(&data, nowInputData)
            nowInputDataNum=2
            calcOperator=op
            nowInputData=0
            dotPlace=0
            displayRefresh()
        }
    }
    @IBAction func PlusButton(_ sender: Any) {
        setOperator(op: 1)
    }
    @IBAction func MinusButton(_ sender: Any) {
        setOperator(op: 2)
    }
    @IBAction func AsteliskButton(_ sender: Any) {
        setOperator(op: 3)
    }
    @IBAction func SlashButton(_ sender: Any) {
        setOperator(op: 4)
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
        dotPlace=0
        calcInit(&data)
        setFirstNum(&data, resultnum)
        nowInputData=resultnum
        displayRefresh()
    }
    @IBAction func DotButton(_ sender: Any) {
        if dotPlace==0{
            dotPlace=1
        }
    }
    func pushNumButton(num:Int, nowdata:Float) -> Float{
        if dotPlace>0{
            dotPlace*=10
            print(Float(num)/Float(dotPlace))
            return nowdata+Float(num)/Float(dotPlace)
        }else{
            return nowdata*10+Float(num)
        }
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
    @IBOutlet weak var displayLabel: NSTextField!
    func displayRefresh(){
        displayLabel.stringValue = String(nowInputData)
    }
    
}

