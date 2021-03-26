//
//  Player.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation


class Player {
    
    var fighter : Fighter
    var fighters = [Fighter]()
   
    init(fighter : Fighter,fighters : [Fighter]){
        self.fighter = fighter
        for _ in 0...2 {
            self.fighters.append(fighter)
        }
    }
        
}






