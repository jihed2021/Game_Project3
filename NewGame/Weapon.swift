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
                + "\n3. Klashnikov "
                + "\n4. Revoler "
                + "\n5. Shotgun "
                + "\n6. PrecisionRifle "
                + "\n7. Hammer&pick ⛏+🗡"
                + "\n8. Pick ⛏"
                + "\n9. Bombe 💣"
                + "\n10. Dagger 🗡"
                + "\n11. Axe 🪓"
                + "\n12. Crossed swords ⚔️")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                self.weaponName = "knife 🔪"
                self.weaponDamage = 25
            case "2":
                self.weaponName = "pistol 🔫"
                self.weaponDamage = 105
            case "3":
                self.weaponName = "klashnikov"
                self.weaponDamage = 150
            case "4":
                self.weaponName = "revoler"
                self.weaponDamage = 110
            case "5":
                self.weaponName = "shotgun"
                self.weaponDamage = 90
            case "6":
                self.weaponName = "precisionRifle"
                self.weaponDamage = 80
            case "7":
                self.weaponName = "hammer&pick ⛏+🗡 "
                self.weaponDamage  = 60
            case "8":
                self.weaponName = "pick ⛏"
                self.weaponDamage = 20
            case "9":
                self.weaponName = "bombe💣"
                self.weaponDamage  = 100
            case "10":
                self.weaponName = "dagger🗡"
                self.weaponDamage = 30
            case "11":
                self.weaponName = "axe🪓"
                self.weaponDamage = 40
            case "12":
                self.weaponName = "crossed swords ⚔️"
                self.weaponDamage = 50
            default :
                print("I dont't understant, please choose your fighters will have the weak weapon")
                self.weaponName = "pick ⛏"
                self.weaponDamage = 20
            }
        }else{
            print("I dont't understant, please choose your fighters will have the weak weapon")
            self.weaponName = "pick ⛏"
            self.weaponDamage = 20
        }
    }
    
    func changeArm() { // permet de changer l'arme au hasard
        let arms = ["1.knife 🔪", "2.pistol 🔫", "3.klashnikov ", "4.revoler","5.shotgun" , "6.precisionRifle", "7.hammer&pick ⛏+🗡", "8.pick ⛏", "9.bombe💣", "10.dagger🗡" , "11.axe🪓", "12.crossed swords ⚔️"]
        let damage = [25, 105, 150, 110, 90 , 80, 60, 20, 100, 30 , 40, 50]
        
        let randomIndex = arc4random_uniform(UInt32(arms.count))
        
        self.weaponName =  arms[Int(randomIndex)]
        self.weaponDamage = damage[Int (randomIndex)]
        
        
    }
}

