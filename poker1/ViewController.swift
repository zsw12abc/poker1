//
//  ViewController.swift
//  poker1
//
//  Created by yj on 17/07/2015.
//  Copyright (c) 2015 yj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var leftScore: UILabel!
    
    @IBOutlet weak var rightScore: UILabel!
    
    
    var leftScoreValue :Int {
        
        get {
            return NSNumberFormatter().numberFromString(leftScore.text!)!.integerValue
        }
        set {
            leftScore.text = "\(newValue)"
        }
        
    }
    
    var rightScoreValue :Int {
        
        get {
            return NSNumberFormatter().numberFromString(rightScore.text!)!.integerValue
        }
        set {
            rightScore.text = "\(newValue)"
        }
        
    }
    
    var cardArray: [String] = ["A_H", "2_H", "3_H", "4_H", "5_H", "6_H", "7_H", "8_H", "9_H", "10_H", "J_H", "Q_H", "K_H"]
    
    
    @IBAction func betPressed(sender: AnyObject) {
        
    
        
        //set left card
        let leftRandomNumber:Int = Int(arc4random_uniform(13))
        
       // print(leftRandomNumber)
        let leftCardName:String = cardArray[leftRandomNumber]
        print(leftCardName, appendNewline: false)
      
        leftCard.image = UIImage(named: leftCardName)

        //set right card
        let rightRandomNumber:Int = Int(arc4random_uniform(13))

        let rightCardName:String = cardArray[rightRandomNumber]
        
        rightCard.image = UIImage(named: rightCardName)
        print(rightCardName)
        
        //judge who win
        if leftRandomNumber > rightRandomNumber {
            
            leftScoreValue += 1
            
        } else if leftRandomNumber < rightRandomNumber {
            rightScoreValue += 1
        } else {
            //Do nothing
        }
        
        
    }
    
    

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

