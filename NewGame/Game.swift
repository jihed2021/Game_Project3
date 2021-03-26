//
//  Game.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Game  {

    var player1 : Player
    var player2 : Player
    var round : Int = 0
    var choosedFighter : Fighter
    
    init (player1 : Player , player2 : Player , choosedFighter:Fighter){
        self.player1 = player1
        self.player2 = player2
        self.choosedFighter = choosedFighter
        round += 1
    }
    
    func choosePlayer1() -> Fighter {
       
        print("please choose your first player from your Teams?")
            if let choice = readLine() {
                switch choice {
                case "1":
                    choosedFighter = player1.fighters[0]
                case "2":
                    choosedFighter =  player1.fighters[1]
                case "3":
                    choosedFighter =  player1.fighters[2]
                default:
                    print("I don't understand your choice")
                }
            }
        return choosedFighter
            }
    func choosePlyer2 () ->Fighter {
        
        print("please choose your first player from your Teams?")
        
            if let choice = readLine() {
                switch choice {
                case "1":
                    choosedFighter = player2.fighters[0]
                case "2":
                    choosedFighter = player2.fighters[1]
                case "3":
                    choosedFighter = player2.fighters[2]
                default:
                    print("I don't understand your choice")
                }
            }
        return choosedFighter
    }
      // Après choix des combattants on commence le jeu
   
    
    
    }

        



