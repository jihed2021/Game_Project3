//
//  Weapon.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Weapon {
    var weaponName : String  // Renseigner après réponse de l'utilisateur
    var weaponDamage : Int  // Renseigner après réponse de l'utilisateur
    
    init () {
        
        print ("choose weapon for your fighter ?"
                + "\n1. Knife 🔪"
                + "\n2. Pistol 🔫"
                + "\n3. Hammer&pick ⛏+🗡"
                + "\n4. Pick ⛏"
                + "\n5. Bombe 💣"
                + "\n6. Dagger 🗡"
                + "\n7. Axe 🪓"
                + "\n8. Crossed swords ⚔️")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                self.weaponName = "knife 🔪"
                self.weaponDamage = 5
            case "2":
                self.weaponName = "pistol 🔫"
                self.weaponDamage = 45
            case "3":
                self.weaponName = "Hammer&pick ⛏+🗡"
                self.weaponDamage = 40
            case "4":
                self.weaponName = "Pick ⛏"
                self.weaponDamage = 15
            case "5":
                self.weaponName = "bombe💣"
                self.weaponDamage  = 20
            case "6":
                self.weaponName = "dagger🗡"
                self.weaponDamage = 25
            case "7":
                self.weaponName = "axe🪓"
                self.weaponDamage = 20
            case "8":
                self.weaponName = "crossed swords ⚔️"
                self.weaponDamage = 35
            default :
                print("I dont't understant, please choose your fighters will have the weak weapon")
                self.weaponName = "knife 🔪"
                self.weaponDamage = 5
            }
        }else{
            print("I dont't understant, please choose your fighters will have the weak weapon")
            self.weaponName = "knife 🔪"
            self.weaponDamage = 5
        }
    }
    
    func changeArm() { // permet de changer l'arme au hasard
        let arms = ["Knife 🔪","Pistol 🔫","Hammer&pick ⛏+🗡","Pick ⛏","bombe💣","dagger🗡","axe🪓","crossed swords ⚔️"]
        let damage = [5, 45, 40, 15, 20 , 25, 20, 35]
        
        let randomIndex = arc4random_uniform(UInt32(arms.count))
        
        self.weaponName =  arms[Int(randomIndex)]
        self.weaponDamage = damage[Int (randomIndex)]
        
        
    }
}

