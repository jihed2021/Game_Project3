//
//  Fighter.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Fighter : Weapon {
    
    var fighter : String
    var fighterName : String
    var weapon : Weapon
    var lifePoint : Int = 1000
  
    
    
    init ( fighter : String , fighterName: String, weaponName :String ,weaponDamage:Int , weapon:Weapon){
        
        self.fighter = fighter
        self.fighterName = fighterName
        self.weapon = weapon
        super .init (weaponName: weaponName, weaponDamage: weaponDamage)
    
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
                                self.fighter = "ninja"
                                print ("Assigned name to your fighter ?")
                                if let name1 = readLine(){
                                    self.fighterName = name1
                                }
                            case "2":
                              self.fighter = "superHéroine"
                                print ("Assigned name to your fighter ?")
                                if let name2 = readLine(){
                                    self.fighterName = name2
                                }
                            case "3":
                                self.fighter = "juge"
                                print ("Assigned name to your fighter ?")
                                if let name3 = readLine(){
                                    self.fighterName = name3
                                }
                            case "4":
                                self.fighter = "super-vilaine"
                                print ("Assigned name to your fighter ?")
                                if let name4 = readLine(){
                                    self.fighterName = name4
                                }
                            case "5":
                                self.fighter = "elfe"
                                print ("Assigned name to your fighter ?")
                                if let name5 = readLine(){
                                    self.fighterName = name5
                                    
                                }
                            case "6":
                                self.fighter = "vampire"
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
    func attack (fighter1 : Fighter ,fighter2:Fighter){

        // pour commencer le jeu on choisi le combattant qu'il a l'arme le plus faible
        
        if fighter1.weapon.weaponDamage < fighter2.weapon.weaponDamage {
            
            print ("fighter1 can start attack")
           
            fighter2.lifePoint -= fighter1.weapon.weaponDamage
            
            
        }else {
            
            print("fighter2 can start attack")
            
            fighter1.lifePoint -= fighter2.weapon.weaponDamage
            
        }
    }
    
}

