//
//  ViewController.swift
//  HackWichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Errin Lyton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TargetLabel: UILabel!    
    @IBOutlet weak var Slider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue = 0
    
    //HW8 Part 3 Part 2
    //create a variable to hold the target value
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //set currentValue to the initial value of the slider
        currentValue = lroundf(Slider.value)
        targetValue = Int.random(in: 0...100)
    }
    @IBAction func GuessnumberPress(_ sender: Any){
    //5. New Variable message that displays a message that includes currentValue
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title:"Hello World!", message: message,  preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
       
       present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ sender: Any)
    {
        print("The value of the slider is:\(Slider.value)")
        currentValue = lroundf(Slider.value)
    }
    
    
    func startNewRound()
    {
            targetValue = Int.random(in: 0...100)
            currentValue = lroundf(Slider.value)
    }

    
    //Probelm set #1
    func updateTargetLabel(){
      
    //Set targetlabel to display the targetValue
        self.TargetLabel.text = String(targetValue)
    
    
    }
    
    
}
