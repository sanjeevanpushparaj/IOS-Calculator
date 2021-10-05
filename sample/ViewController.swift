//
//  ViewController.swift
//  File name - sample
//  Module Name - MAPD 714
//  Author's Name - Sanjeevan Pushparaj
//  Student ID - 301213104
//  Date - 25/09/2021
//  App description - GUI for a simple calculator application

import UIKit

class ViewController: UIViewController {

    //Creating Outlets
    @IBOutlet weak var btnDot: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var textView: UILabel!
    
    var display:Double=0
    var exDisplay:Double=0
    var result=false
    var calculation:Int=0
    var check:Double=0
    var temp:String=""
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if result==true{
            
            textView.text=String(sender.tag-1)
            display=Double(textView.text!)!
            result=false
        }
        else if sender.tag==20{
            
            textView.text = textView.text!+"."
            display=Double(textView.text!)!
        }
        else{
            textView.text = textView.text! + String(sender.tag-1)
            display=Double(textView.text!)!
        }        
       
    }
    
    
    @IBAction func operation(_ sender: UIButton) {
        
        if textView.text != "" && ((sender.tag>10 && sender.tag<15)||(sender.tag==17)){
            
            exDisplay=Double(textView.text!)!
            if sender.tag==11{
                textView.text="+"
            }
            if sender.tag==12{
                textView.text="-"
            }
            if sender.tag==13{
                textView.text="*"
            }
            if sender.tag==14{
                textView.text="÷"
            }
            if sender.tag==17{
                textView.text="%"
            }
            calculation=sender.tag
            result=true
        }
        else if sender.tag==15{
            
            if calculation==11{
                check=Double(exDisplay+display)
                textView.text=formatResult(result:check)
            }
            if calculation==12{
                check=Double(exDisplay-display)
                textView.text=formatResult(result:check)

            }
            if calculation==13{
                check=Double(exDisplay*display)
                textView.text=formatResult(result:check)
            }
            if calculation==14{
                check=Double(exDisplay/display)
                textView.text=formatResult(result:check)
            }
            if calculation==17{
                check=Double((exDisplay/100)*display)
                textView.text=formatResult(result:check)
            }
            
        }
        else if sender.tag==16{
            textView.text=""
            exDisplay=0
            display=0
            calculation=0
        }
        else if sender.tag==18{
            display=display*(-1)
            textView.text=String(display)
        }
        else if sender.tag==19{
            temp=textView.text!
            temp.removeLast()
            textView.text=temp
            
        }
        
    }
    
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.8f", result)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.layer.cornerRadius = 10
        textView.layer.masksToBounds = true
        
        btn1.layer.cornerRadius = btn1.frame.width / 2
        btn1.layer.masksToBounds = true
        
        btn2.layer.cornerRadius = btn2.frame.width / 2
        btn2.layer.masksToBounds = true
        
        btn3.layer.cornerRadius = btn3.frame.width / 2
        btn3.layer.masksToBounds = true
        
        btn4.layer.cornerRadius = btn4.frame.width / 2
        btn4.layer.masksToBounds = true
        
        btn5.layer.cornerRadius = btn5.frame.width / 2
        btn5.layer.masksToBounds = true
        
        btn6.layer.cornerRadius = btn6.frame.width / 2
        btn6.layer.masksToBounds = true
        
        btn7.layer.cornerRadius = btn7.frame.width / 2
        btn7.layer.masksToBounds = true
        
        btn8.layer.cornerRadius = btn8.frame.width / 2
        btn8.layer.masksToBounds = true
        
        btn9.layer.cornerRadius = btn9.frame.width / 2
        btn9.layer.masksToBounds = true
        
        btnDot.layer.cornerRadius = btnDot.frame.width / 2
        btnDot.layer.masksToBounds = true
        
        btn0.layer.cornerRadius = 15
        btn0.layer.masksToBounds = true
    }
    
}

