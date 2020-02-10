//
//  ViewController.swift
//  TicTacToeSueB_v3
//
//  Created by student on 2/9/20.
//  Copyright © 2020 McHenry County College. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var activePlayer = 1 //Cross && to keep track of who's turn it is
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // keep track of what has been played
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]] //these are all the possible winning combinations
    var gameIsActive = true
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func action(_ sender: Any)
    {
        if (gameState[(sender as AnyObject).tag-1] == 0 && gameIsActive == true)  //make sure only one play (x or o) per box && game stops when all pieces layed
        {
            gameState[(sender as AnyObject).tag-1] = activePlayer  //updating to active player
            
            if (activePlayer == 1) //checking to see who the active player is
            {
                (sender as AnyObject).setImage(UIImage(named: "Cross.png"), for: UIControl.State())
                activePlayer = 2  //changing to player 2 after 1 places 'X'
            }
            else
            {
                (sender as AnyObject).setImage(UIImage(named: "Nought.png"), for: UIControl.State())
                activePlayer = 1  //changing back to player 1 after 2 places 'O'
            }
        }
 
        for combination in winningCombinations  //looping through winningCombinations to see if someone wins
        {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] //HELP ***
            {
                gameIsActive = false  // will put the game on pause
                
                if gameState[combination[0]] == 1
                {
                    label.text = "CROSS HAS WON!!"
                }
                else
                {
                    label.text = "NOUGHT HAS WON!!"
                }
                
                playAgainButton.isHidden = false   //enable user to restart the game
                label.isHidden = false
            }
        }
        
        gameIsActive = false
        
        for i in gameState
        {
            if i == 0
            {
                gameIsActive = true
                break
            }
        }
        
        if gameIsActive == false
        {
            label.text = "IT WAS A DRAW"
            label.isHidden = false
            playAgainButton.isHidden = false
        }
        
    }
    
    @IBOutlet weak var playAgainButton: UIButton!

    @IBAction func playAgain(_ sender: Any)
    {
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] //reseting game
        gameIsActive = true
        activePlayer = 1
        
        playAgainButton.isHidden = true
        label.isHidden = true
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControl.State())
        }
        
    }
    
    
    override func viewDidLoad()
        {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }
    
    override func didReceiveMemoryWarning()
        {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
        }


}
