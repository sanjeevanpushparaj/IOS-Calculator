//
//  ViewController.swift
//  sample
//
//  Created by Sanjeevan Pushparaj on 24/09/21.
//

import UIKit

class ViewController: UIViewController {

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

