//
//  Fighter.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation
class Fighter : Weapon {
    var fighterName : String
    var fighter : String
    var lifePoints : Int = 1000
    
    init (fighter : String, fighterName : String ,lifePoints : Int, weaponName :String ,damage:Int ){
        self.fighterName = fighterName
        self.fighter = fighter
        super .init(weaponName: weaponName, damage: damage)
    }
    func chooseFighters ()  { // retourne le nom du combattant
  
    print (" choose your fighters?"
    + "\n1. 🥷🏾 ninja"
    + "\n2. 🦸🏻 superHéroine"
    + "\n3. 🧑🏼‍⚖️ juge"
    + "\n4. 🦹🏼 super-vilaine"
    + "\n5. 🧝🏿 elfe"
    + "\n6. 🧛🏻‍♀️ vampire")
    
        //    Récupérer la réponse du premier joueur concernant le choix des combattant et leurs noms
    
                if let choice = readLine() {
                    switch choice {
                        case "1":
                            print ("Assigned name to your fighter ?")
                            if let name1 = readLine(){
                                fighterName = name1
                                fighter = "ninja"
                            }
                        case "2":
                            print ("Assigned name to your fighter ?")
                            if let name2 = readLine(){
                                fighterName = name2
                                fighter = "superHéroine"
                            }
                        case "3":
                            print ("Assigned name to your fighter ?")
                            if let name3 = readLine(){
                                fighterName = name3
                                fighter = "juge"
                            }
                        case "4":
                                print ("Assigned name to your fighter ?")
                                if let name4 = readLine(){
                                    fighterName = name4
                                    fighter = "super-vilaine"
                                }
                        case "5":
                            print ("Assigned name to your fighter ?")
                            if let name5 = readLine(){
                                fighterName = name5
                                fighter = "elfe"
                            }
                        case "6":
                            print ("Assigned name to your fighter ?")
                            if let name6 = readLine(){
                                fighterName = name6
                                fighter = "vampire"
                            }
                        default :
                            print("I dont't understant, please choose your fighters")
                    }
                }
    
    }
    
    
}

