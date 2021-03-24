//
//  Player.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation


class Player : Fighter {
   
    var fighters  = [Fighter]()
    
    init (Fighter:Fighter,fighter : String, fighterName : String ,lifePoints : Int, weaponName :String ,damage:Int) {
        
        super.init(fighter : fighter ,fighterName: fighterName, lifePoints: lifePoints, weaponName: weaponName, damage: damage)
   
 func chooseThreeFighters() {
        
        for _ in 0...2 {
    
        self.fighters.append(Fighter)
    }
    }
    
}
}



