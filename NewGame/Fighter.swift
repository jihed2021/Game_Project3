//
//  Fighter.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Fighter {
    
    var fighterName : String
    var lifePoint : Int = 1000
    var weopon : Weapon
    
    
    init (fighterName: String , weopon : Weapon){
        
        self.fighterName = fighterName
        self.weopon = weopon
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
                                    self.fighterName = name1
                                }
                            case "2":
                                print ("Assigned name to your fighter ?")
                                if let name2 = readLine(){
                                    self.fighterName = name2
                                }
                            case "3":
                                print ("Assigned name to your fighter ?")
                                if let name3 = readLine(){
                                    self.fighterName = name3
                                }
                            case "4":
                                print ("Assigned name to your fighter ?")
                                if let name4 = readLine(){
                                    self.fighterName = name4
                                }
                            case "5":
                                print ("Assigned name to your fighter ?")
                                if let name5 = readLine(){
                                    self.fighterName = name5
                                    
                                }
                            case "6":
                                print ("Assigned name to your fighter ?")
                                if let name6 = readLine(){
                                    self.fighterName = name6
                                    
                                }
                            default :
                                print("I dont't understant, please choose your fighters")
                        }
                    }
        }
    
    }

