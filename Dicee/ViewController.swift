//
//  ViewController.swift
//  Dicee
//
//  Created by Grace Njoroge on 20/09/2018.
//  Copyright © 2018 Grace Njoroge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    //create array with all dice images
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollButton.backgroundColor = .gray
        setRandomDiceImages()
    }

    @IBAction func randomizeDice(_ sender: UIButton) {
        setRandomDiceImages()
    }
    
    func setRandomDiceImages() {
        //generate a random number
        let randomDiceImage1 = Int(arc4random_uniform(6))
        let randomDiceImage2 = Int(arc4random_uniform(6))
        
        //assign the random number to the dice images
        diceImage1.image = UIImage(named: diceImages[randomDiceImage1])
        diceImage2.image = UIImage(named: diceImages[randomDiceImage2])
        
        print(randomDiceImage1, randomDiceImage2)
    }
    
    //randomize the dice when device is shaken
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        setRandomDiceImages()
    }
}

