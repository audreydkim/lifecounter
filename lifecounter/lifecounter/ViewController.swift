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
    var loser : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var gameOver: UILabel!
    
    // All for Player 1 Section--------------------
    @IBOutlet weak var player1_label: UILabel!
    @IBOutlet weak var player1_lflabel: UILabel!
    
    // total:
    @IBOutlet weak var player1_total: UILabel!
    
    // SUBTRACTING BUTTONS
    @IBAction func subtract5_p1(_ sender: Any) {
        if (p1_curr - 5 < 0) {
            p1_curr = 0
        } else {
            p1_curr -= 5
        }
        player1_total.text = String(p1_curr)
        gameOverChecker()
    }
    @IBAction func subract1_p1(_ sender: Any) {
        if (p1_curr - 1 < 0) {
            p1_curr = 0
        } else {
            p1_curr -= 1
        }
        player1_total.text = String(p1_curr)
        gameOverChecker()
    }
    
    // ADDITION BUTTONS
    @IBAction func add5_p1(_ sender: Any) {
        gameRestarting(player: 1)
        p1_curr += 5
        player1_total.text = String(p1_curr)
    }
    @IBAction func add1_p1(_ sender: Any) {
        gameRestarting(player: 1)
        p1_curr += 1
        player1_total.text = String(p1_curr)
    }
    
    
    
    // All for Player 2 Section---------------------
    @IBOutlet weak var player2_label: UILabel!
    @IBOutlet weak var player2_lflabel: UILabel!
    
    // total:
    @IBOutlet weak var player2_total: UILabel!
    
    // SUBTRACTING BUTTONS
    @IBAction func subtract5_p2(_ sender: Any) {
        if (p2_curr - 5 < 0) {
            p2_curr = 0
        } else {
            p2_curr -= 5
        }
        player2_total.text = String(p2_curr)
        gameOverChecker()
    }
    @IBAction func subtract1_p2(_ sender: Any) {
        if (p2_curr - 1 < 0) {
            p2_curr = 0
        } else {
            p2_curr -= 1
        }
        player2_total.text = String(p2_curr)
        gameOverChecker()
    }
        
    // ADDITION BUTTONS
    @IBAction func add5_p2(_ sender: Any) {
        gameRestarting(player: 2)
        p2_curr += 5
        player2_total.text = String(p2_curr)
    }
    
  
    @IBAction func add1_p2(_ sender: Any) {
        gameRestarting(player: 2)
        p2_curr += 1
        player2_total.text = String(p2_curr)
    }
    
    
    func gameOverChecker() {
        if (p1_curr <= 0) {
            loser = "1"
            gameOver.text = "Player \(loser) LOSES!"
        } else if (p2_curr <= 0) {
            loser = "2"
            gameOver.text = "Player \(loser) LOSES!"
        }
    }
    
    func gameRestarting(player: Int) {
        if (p1_curr > 0 || p2_curr > 0) {
            gameOver.text = ""
        }
    }
    
    
}

