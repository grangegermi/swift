//
//  ViewController.swift
//  Autolayout
//
//  Created by Даша Волошина on 12.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFirst: Double = 0
    var numberSecond: Double = 0
    var check:Bool = false
    var operationMath:Int = 0
    var label = UILabel(frame: CGRect(x: 20, y: 200, width: 200, height: 60))
    
    let buttonAc = UIButton()
    let buttonPlusMinus = UIButton()
    let buttonPrercent = UIButton()
    let buttonDivision = UIButton()
    let button0 = UIButton()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()

    let buttonMultiply = UIButton()
    let buttonSum = UIButton()
    let buttonSubtraction = UIButton()
    let buttonComma = UIButton()
    let buttonEquals = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(label)
        label.textColor = .white
        label.text = "  "
        label.font = label.font.withSize(32)
        label.textAlignment = .right
        
        
        view.addSubview(buttonAc)
        buttonAc.layer.cornerRadius = 60/2
        buttonAc.backgroundColor = .lightGray
        buttonAc.setTitle("AC", for: .normal)
        buttonAc.setTitleColor(.black, for: .normal)
        buttonAc.addTarget(self, action: #selector(operation), for: .touchUpInside)
        
        buttonAc.translatesAutoresizingMaskIntoConstraints = false
        buttonAc.leftAnchor.constraint(equalTo:view.leftAnchor,constant: 40).isActive = true
        buttonAc.widthAnchor.constraint(equalToConstant: 60).isActive = true
        buttonAc.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonAc.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive =  true
        buttonAc.tag = 14
        
        buttonPlusMinus.layer.cornerRadius = 60/2
        buttonPlusMinus.backgroundColor = .lightGray
        buttonPlusMinus.setTitle(" + / -  ", for: .normal)
        buttonPlusMinus.setTitleColor(.black, for: .normal)
        view.addSubview(buttonPlusMinus)
        
        buttonPlusMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusMinus.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive =  true
        buttonPlusMinus.widthAnchor.constraint(equalToConstant: 60).isActive = true
        buttonPlusMinus.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonPlusMinus.leftAnchor.constraint(equalTo:view.leftAnchor,constant: 120).isActive = true
        buttonPlusMinus.addTarget(self, action: #selector(operation), for: .touchUpInside)
        
        buttonPrercent.layer.cornerRadius = 60/2
        buttonPrercent.backgroundColor = .lightGray
        buttonPrercent.setTitle(" % ", for: .normal)
        buttonPrercent.setTitleColor(.black, for: .normal)
        view.addSubview(buttonPrercent)
        buttonPrercent.addTarget(self, action: #selector(operation), for: .touchUpInside)
        
        buttonPrercent.translatesAutoresizingMaskIntoConstraints = false
        buttonPrercent.rightAnchor.constraint(equalTo:view.rightAnchor,constant:-120).isActive = true
        buttonPrercent.widthAnchor.constraint(equalToConstant:60).isActive = true
        buttonPrercent.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonPrercent.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive =  true
        
        
        buttonDivision.layer.cornerRadius = 60/2
        buttonDivision.backgroundColor = .orange
        buttonDivision.setTitle(" / ", for: .normal)
        buttonDivision.setTitleColor(.white, for: .normal)
        view.addSubview(buttonDivision)
        buttonDivision.tag =  13
        buttonDivision.addTarget(self, action: #selector(operation), for: .touchUpInside)
        
        buttonDivision.translatesAutoresizingMaskIntoConstraints = false
        buttonDivision.rightAnchor.constraint(equalTo:view.rightAnchor,constant:-40).isActive = true
        buttonDivision.widthAnchor.constraint(equalToConstant:60).isActive = true
        buttonDivision.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonDivision.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive =  true
        
     
        button7.layer.cornerRadius = 60/2
        button7.backgroundColor = .darkGray
        button7.setTitle(" 7 ", for: .normal)
        button7.setTitleColor(.white, for: .normal)
        view.addSubview(button7)
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.topAnchor.constraint(equalTo:buttonAc.topAnchor,constant:70).isActive = true
        button7.widthAnchor.constraint(equalToConstant:60).isActive = true
        button7.heightAnchor.constraint(equalToConstant:60).isActive = true
        button7.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        button7.addTarget(self, action: #selector(number), for: .touchUpInside)
        button7.tag = 7
 
        button8.layer.cornerRadius = 60/2
        button8.backgroundColor = .darkGray
        button8.setTitle(" 8 ", for: .normal)
        button8.setTitleColor(.white, for: .normal)
        view.addSubview(button8)
        button8.tag = 8
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.topAnchor.constraint(equalTo:buttonPlusMinus.topAnchor,constant:70).isActive = true
        button8.widthAnchor.constraint(equalToConstant:60).isActive = true
        button8.heightAnchor.constraint(equalToConstant:60).isActive = true
        button8.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120).isActive = true
        button8.addTarget(self, action: #selector(number), for: .touchUpInside)
        
        button9.layer.cornerRadius = 60/2
        button9.backgroundColor = .darkGray
        button9.setTitle(" 9 ", for: .normal)
        button9.setTitleColor(.white, for: .normal)
        view.addSubview(button9)
        button9.addTarget(self, action: #selector(number), for: .touchUpInside)
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.topAnchor.constraint(equalTo:buttonPrercent.topAnchor,constant:70).isActive = true
        button9.widthAnchor.constraint(equalToConstant:60).isActive = true
        button9.heightAnchor.constraint(equalToConstant:60).isActive = true
        button9.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -120).isActive = true
        button9.tag = 9
        
        buttonMultiply.layer.cornerRadius = 60/2
        buttonMultiply.backgroundColor = .orange
        buttonMultiply.setTitle(" X ", for: .normal)
        buttonMultiply.setTitleColor(.white, for: .normal)
        view.addSubview(buttonMultiply)
        buttonMultiply.tag =  12
        buttonMultiply.addTarget(self, action: #selector(operation), for: .touchUpInside)
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.topAnchor.constraint(equalTo:buttonDivision.topAnchor,constant:70).isActive = true
        buttonMultiply.widthAnchor.constraint(equalToConstant:60).isActive = true
        buttonMultiply.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonMultiply.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
        button4.layer.cornerRadius = 60/2
        button4.backgroundColor = .darkGray
        button4.setTitle(" 4 ", for: .normal)
        button4.setTitleColor(.white, for: .normal)
        view.addSubview(button4)
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.topAnchor.constraint(equalTo:button7.topAnchor,constant:70).isActive = true
        button4.widthAnchor.constraint(equalToConstant:60).isActive = true
        button4.heightAnchor.constraint(equalToConstant:60).isActive = true
        button4.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        button4.addTarget(self, action: #selector(number), for: .touchUpInside)
        button4.tag = 4
        
        button5.layer.cornerRadius = 60/2
        button5.backgroundColor = .darkGray
        button5.setTitle(" 5 ", for: .normal)
        button5.setTitleColor(.white, for: .normal)
        view.addSubview(button5)
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.topAnchor.constraint(equalTo:button8.topAnchor,constant:70).isActive = true
        button5.widthAnchor.constraint(equalToConstant:60).isActive = true
        button5.heightAnchor.constraint(equalToConstant:60).isActive = true
        button5.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120).isActive = true
        button5.addTarget(self, action: #selector(number), for: .touchUpInside)
        button5.tag = 5
        
        button6.layer.cornerRadius = 60/2
        button6.backgroundColor = .darkGray
        button6.setTitle(" 6 ", for: .normal)
        button6.setTitleColor(.white, for: .normal)
        view.addSubview(button6)
        
        button6.addTarget(self, action: #selector(number), for: .touchUpInside)
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.topAnchor.constraint(equalTo:button9.topAnchor,constant:70).isActive = true
        button6.widthAnchor.constraint(equalToConstant:60).isActive = true
        button6.heightAnchor.constraint(equalToConstant:60).isActive = true
        button6.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -120).isActive = true
        button6.tag = 6
        
        buttonSubtraction.layer.cornerRadius = 60/2
        buttonSubtraction.backgroundColor = .orange
        buttonSubtraction.setTitle(" - ", for: .normal)
        buttonSubtraction.setTitleColor(.white, for: .normal)
        view.addSubview(buttonSubtraction)
        buttonSubtraction.tag =  11
        buttonSubtraction.addTarget(self, action: #selector(operation), for: .touchUpInside)
        buttonSubtraction.translatesAutoresizingMaskIntoConstraints = false
        buttonSubtraction.topAnchor.constraint(equalTo:buttonMultiply.topAnchor,constant:70).isActive = true
        buttonSubtraction.widthAnchor.constraint(equalToConstant:60).isActive = true
        buttonSubtraction.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonSubtraction.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
        button1.layer.cornerRadius = 60/2
        button1.backgroundColor = .darkGray
        button1.setTitle(" 1 ", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        view.addSubview( button1)
        button1.addTarget(self, action: #selector(number), for: .touchUpInside)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.topAnchor.constraint(equalTo:button4.topAnchor,constant:70).isActive = true
        button1.widthAnchor.constraint(equalToConstant:60).isActive = true
        button1.heightAnchor.constraint(equalToConstant:60).isActive = true
        button1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        button1.tag = 1
        
        button2.layer.cornerRadius = 60/2
        button2.backgroundColor = .darkGray
        button2.setTitle(" 2 ", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        view.addSubview( button2)
        button2.addTarget(self, action: #selector(number), for: .touchUpInside)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.topAnchor.constraint(equalTo:button5.topAnchor,constant:70).isActive = true
        button2.widthAnchor.constraint(equalToConstant:60).isActive = true
        button2.heightAnchor.constraint(equalToConstant:60).isActive = true
        button2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120).isActive = true
        button2.tag = 2
        
        button3.layer.cornerRadius = 60/2
        button3.backgroundColor = .darkGray
        button3.setTitle(" 3 ", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        view.addSubview( button3)
        button3.addTarget(self, action: #selector(number), for: .touchUpInside)
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.topAnchor.constraint(equalTo:button6.topAnchor,constant:70).isActive = true
        button3.widthAnchor.constraint(equalToConstant:60).isActive = true
        button3.heightAnchor.constraint(equalToConstant:60).isActive = true
        button3.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -120).isActive = true
        button3.tag = 3
        
        buttonSum.layer.cornerRadius = 60/2
        buttonSum.backgroundColor = .orange
        buttonSum.setTitle(" + ", for: .normal)
        buttonSum.setTitleColor(.white, for: .normal)
        view.addSubview(buttonSum)
        buttonSum.tag = 10
        buttonSum.addTarget(self, action: #selector(operation), for: .touchUpInside)
        buttonSum.translatesAutoresizingMaskIntoConstraints = false
        buttonSum.topAnchor.constraint(equalTo:buttonSubtraction.topAnchor,constant:70).isActive = true
        buttonSum.widthAnchor.constraint(equalToConstant:60).isActive = true
        buttonSum.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonSum.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
        button0.layer.cornerRadius = 30
        button0.backgroundColor = .darkGray
        button0.setTitle(" 0 ", for: .normal)
        button0.setTitleColor(.white, for: .normal)
        view.addSubview( button0)
        button0.addTarget(self, action: #selector(number), for: .touchUpInside)
        button0.translatesAutoresizingMaskIntoConstraints = false
        button0.topAnchor.constraint(equalTo:button1.topAnchor,constant:70).isActive = true
        button0.widthAnchor.constraint(equalToConstant:140).isActive = true
        button0.heightAnchor.constraint(equalToConstant:60).isActive = true
        button0.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        button0.tag = 0
        
        buttonComma.layer.cornerRadius = 30
        buttonComma.backgroundColor = .darkGray
        buttonComma.setTitle(" , ", for: .normal)
        buttonComma.setTitleColor(.white, for: .normal)
        view.addSubview( buttonComma)
        buttonComma.addTarget(self, action: #selector(operation), for: .touchUpInside)
        buttonComma.translatesAutoresizingMaskIntoConstraints = false
        buttonComma.topAnchor.constraint(equalTo:button3.topAnchor,constant:70).isActive = true
        buttonComma.widthAnchor.constraint(equalToConstant:60).isActive = true
        buttonComma.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonComma.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -120).isActive = true
        
        buttonEquals.layer.cornerRadius = 30
        buttonEquals.backgroundColor = .orange
        buttonEquals.setTitle(" = ", for: .normal)
        buttonEquals.setTitleColor(.white, for: .normal)
        view.addSubview( buttonEquals)
        buttonEquals.tag = 15
        
        buttonEquals.addTarget(self, action: #selector(operation), for: .touchUpInside)
        buttonEquals.translatesAutoresizingMaskIntoConstraints = false
        buttonEquals.topAnchor.constraint(equalTo:buttonSum.topAnchor,constant:70).isActive = true
        buttonEquals.widthAnchor.constraint(equalToConstant:60).isActive = true
        buttonEquals.heightAnchor.constraint(equalToConstant:60).isActive = true
        buttonEquals.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
    }

    
    @objc func number(_ sender:UIButton){
        numberSecond = Double(label.text!)!
        if check == true {
            label.text = String(sender.tag)
            check = false
        } else {
            label.text = label.text! + String(sender.tag)
        }

    }
    
    @objc func operation (_ sender:UIButton){
        if label.text != " " && sender.tag != 14 && sender.tag != 15 {
            numberFirst = Double(label.text!)!
        
            if sender.tag == 10 {
                label.text = "+"
            }
          else if sender.tag == 11 {
                label.text = "-"
                }
          else if sender.tag == 12 {
                label.text = "x"
            }
           else if sender.tag == 13 {
                label.text = "/"
            }
            operationMath = sender.tag
        }
            else if sender.tag == 15 {
            if operationMath == 10  {
                label.text = "\(numberFirst + numberSecond)"
            }
                if operationMath == 11 {
                label.text = "\(numberFirst - numberSecond)"
            }
                if operationMath == 12{
                label.text = "\(numberFirst * numberSecond)"
            }
                if operationMath == 13 {
                label.text = "\(numberFirst / numberSecond)"
            }
            }
        else if sender.tag == 14 {
            label.text = " "
        }
    }
}

