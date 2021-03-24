//
//  Game.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation
class Game : Player {
    var player1 : Fighter
    var player2 : Fighter
    var round : Int = 0
    
    init (round : Int ,Fighter:Fighter){
        self.round = round
        
    func ChooseFighter () {
            print ("choose your first fighter from your team"
            + "\n1."
            + "\n2."
            + "\n3.")
            if let answer = readLine() {
                switch answer {
                case "1" :
                    self.player1 = fighters[0]
                case "2":
                    self.player1 = fighters[1]
                case "3":
                    self.player1 = fighters[2]
                default :
                print ("I dont understand your choice")
                }
    }
    
    
}
}
}
