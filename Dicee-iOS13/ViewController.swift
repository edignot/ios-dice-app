//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageOne: UIImageView!
    
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    let diceImages = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageOne.image = diceImages.randomElement()
        diceImageTwo.image = diceImages.randomElement()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageOne.image = diceImages.randomElement()
        diceImageTwo.image = diceImages.randomElement()
        
        // print random number 1 to 10
        print(Int.random(in: 1...10))
    }
    
}

