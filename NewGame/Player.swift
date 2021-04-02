//
//  Player.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation


class Player  {

    let name : String
    var fighters = [Fighter]()
   
    init(){
        
        print ("name of player please?")
        if let name = readLine(){
            self.name = name
                    }
        else {
                print ("I dont't understant your name")
                self.name = "djo"
                        }
        for _ in 0...2 {
            let fighter = Fighter()
            self.fighters.append(fighter)
        }
        
    }
        
}






