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
        print ("Hello 🤙 your are a player in  <<☠️👊 MortelCombat 👊☠️>>"
               + "\nwhat is your name please?")
            
        if let name = readLine(){
            self.name = name
            print(""
                  + "\n Welcome \(name) , now you will choose your three fighter:")
                    }
        else {
                print ("I dont't understant your name")
                self.name = "djo"
            print("Welcome \(name) , now you will choose your 3 fighters:")
                        }
        for index in 1...3 {
            print(""
                + "\nchoose your \(index) fighter from list below ?")
            let fighter = Fighter()
            self.fighters.append(fighter)
        }
        
    }
    func fightersName() -> [String] {
        var names = [String]()
        for (index, fighter) in fighters.enumerated() {
            names.append("\(index). \(fighter.pseudo)")
        }
        return names
    }
}






