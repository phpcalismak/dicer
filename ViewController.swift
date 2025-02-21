//
//  ViewController.swift
//  xdd
//
//  Created by Trakya7 on 21.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // İlk başta zarların görsellerini sıfırlayabilirsiniz (veya herhangi bir varsayılan görsel atayabilirsiniz)
        diceImageView1.image = UIImage(named: "dice1")
        diceImageView2.image = UIImage(named: "dice1")
    }

    @IBAction func rollDice(_ sender: UIButton) {
        // Zarları rastgele atmak için iki sayı üret
        let randomIndex1 = Int.random(in: 0..<diceImages.count)
        let randomIndex2 = Int.random(in: 0..<diceImages.count)
        
        // Zarları güncelle
        diceImageView1.image = UIImage(named: diceImages[randomIndex1])
        diceImageView2.image = UIImage(named: diceImages[randomIndex2])
    }
}


