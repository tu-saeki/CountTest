//
//  ViewController.swift
//  CountAppTestFinal
//
//  Created by nttr on 2017/08/02.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number : Int = 0
    @IBOutlet var label : UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func plus () {
        
        number = number + 1
        updateView()
    }
    
    @IBAction func minus () {
        
        number = number - 1
        updateView()
    }
    
    @IBAction func clear () {
        
        number = 0
        updateView()
    }


    func changeFontColor () {
        
        if(number >= 0){
            
            label.textColor = UIColor.black
        }
        else if(number < 0){
            
            label.textColor = UIColor.red
        }
    }
    
    func updateView () {

        changeFontColor()

        label.text = String(number)
    }
    
    
    

}
