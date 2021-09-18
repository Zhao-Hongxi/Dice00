//
//  ViewController.swift
//  Dice00
//
//  Created by ivan on 2021/9/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var below7Button: UIButton!
    
    @IBOutlet weak var lucky7Button: UIButton!
    
    @IBOutlet weak var above7Button: UIButton!
    
    var score = 0
    
    var one = 1
    var two = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        below7Button.titleLabel?.adjustsFontSizeToFitWidth = true
        lucky7Button.titleLabel?.adjustsFontSizeToFitWidth = true
        above7Button.titleLabel?.adjustsFontSizeToFitWidth = true
        
    }

    @IBAction func below7Pressed(_ sender: Any) {
        roll()
        
        score += one + two < 7 ? 1 : -1
        
        label.text = "Score = \(score)"
    }
    
    @IBAction func lucky7Pressed(_ sender: Any) {
        roll()
        
        score += one + two == 7 ? 7 : -7
        
        label.text = "Score = \(score)"
    }
    
    @IBAction func abouv7Pressed(_ sender: Any) {
        roll()
        
        score += one + two > 7 ? 1 : -1
        
        label.text = "Score = \(score)"
    }
    
    func roll() -> Void {
        one = Int.random(in: 1...6)
        two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        image1.image = UIImage(named: imgOneName)
        image2.image = UIImage(named: imgTwoName)
    }
    
    func initImage() -> Void {
        image1.image = UIImage(named: "Dice1")
        image2.image = UIImage(named: "Dice1")
    }
    
}
