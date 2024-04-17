//
//  ViewController.swift
//  lifecounter
//
//  Created by Audrey Kim on 4/17/24.
//

import UIKit

class ViewController: UIViewController {

    // fields keeping track of player totals
    var p1_curr : Int = 20
    var p2_curr : Int = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // All for Player 1 Section
    @IBOutlet weak var player1_label: UILabel!
    
    @IBOutlet weak var player1_lflabel: UILabel!
    
    // total:
    @IBOutlet weak var player1_total: UILabel!
    
    // edits p1_curr
    // then changes player1_lflabel
    @IBAction func subtract5_p1(_ sender: Any) {
        p1_curr -= 5
        player1_total.text = String(p1_curr)
        print(gameOverChecker())
    }
    
    func gameOverChecker() -> Bool {
        return p1_curr <= 0
    }
    
    
    
    
    
    
    // All for Player 2 Section
    @IBOutlet weak var player2_label: UILabel!
    
    @IBOutlet weak var player2_lflabel: UILabel!
    
    // total:
    @IBOutlet weak var player2_total: UILabel!
    
    
    
    
    
    
}

