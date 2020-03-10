//
//  ViewController.swift
//  HackWichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Errin Lyton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Slider: UISlider!
    
    var currentValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func GuessnumberPress(_ sender: Any){
    
        let message = "The value is: \(currentValue)"
       
        
        let alert = UIAlertController(title:"Hello World!", message: message,  preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
    
       present(alert, animated: true, completion: nil)
    }
    
  
    @IBAction func sliderMoved(_ sender: Any) {
    
        print("The value of the slider is:\(Slider.value)")
       currentValue = lroundf(Slider.value)
    
    
    }
    


}

