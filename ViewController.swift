//
//  ViewController.swift
//  WarApp
//
//  Created by Zaki Jefferson on 10/25/18.
//  Copyright © 2018 Zaki Jefferson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
 
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func dealButton(_ sender: Any) {
        
        //generating random numbers. arc uniform specifies an upper limit. 0 to -1. used for generating random cards
        let leftRandomNumber = arc4random_uniform(13) + 2
        // 2 to 14 because of the + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //assigning the left image view to a specific card 
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        //assigning the left image view to a specific card
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare the numbers
        if leftRandomNumber > rightRandomNumber {
            //update the score
            leftScore += 1
            
            //update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            //update the score
            rightScore += 1
            
            //update the label
            rightScoreLabel.text = String(rightScore)
        }
        else if rightRandomNumber == leftRandomNumber {
            
        }
        
    }
}

