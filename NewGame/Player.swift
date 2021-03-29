//
//  Player.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation


class Player : Fighter {
    
    var fighter :Fighter
    var fighters = [Fighter]()
   
    init(fighters : [Fighter], fighter : Fighter, fighterName : String, weopon : Weapon){
        self.fighter = fighter
        super.init(fighterName: fighterName, weopon: weopon)
        
        for _ in 0...2 {
            self.fighters.append(fighter)
        }
    }
        
}






