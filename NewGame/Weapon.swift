//
//  Weapon.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

final class Weapon {
    var name: String  // Renseigner après réponse de l'utilisateur
    var damage: Int  // Renseigner après réponse de l'utilisateur
    
    init() {
        print("choose weapon for your fighter ?"
                + "\n1.Knife 🔪|2.Pistol 🔫|3.Hammer&pick ⛏+🗡|4. Pick ⛏|5.Bombe 💣|6.Dagger 🗡|7.Axe 🪓|8.Crossed swords ⚔️")
        if let choice = readLine() {
            switch choice {
            case "1":
                self.name = "knife 🔪"
                self.damage = 5
            case "2":
                self.name = "pistol 🔫"
                self.damage = 45
            case "3":
                self.name = "Hammer&pick ⛏+🗡"
                self.damage = 40
            case "4":
                self.name = "Pick ⛏"
                self.damage = 15
            case "5":
                self.name = "bombe💣"
                self.damage  = 20
            case "6":
                self.name = "dagger🗡"
                self.damage = 25
            case "7":
                self.name = "axe🪓"
                self.damage = 20
            case "8":
                self.name = "crossed swords ⚔️"
                self.damage = 35
            default :
                print("I dont't understant, so you have a weak weapon(knife🔪)")
                self.name = "knife 🔪"
                self.damage = 5
            }
        } else {
            print("I dont't understant, a weak weapon will be affected to your fighter")
            self.name = "knife 🔪"
            self.damage = 5
        }
    }
    
    func changeArm() { // permet de changer l'arme au hasard
        let arms = ["Knife 🔪", "Pistol 🔫", "Hammer&pick ⛏+🗡", "Pick ⛏", "bombe💣", "dagger🗡", "axe🪓", "crossed swords ⚔️"]
        let damage = [5, 45, 40, 15, 20, 25, 20, 35]
        let randomIndex = arc4random_uniform(UInt32(arms.count))
        self.name =  arms[Int(randomIndex)]
        self.damage = damage[Int(randomIndex)]
    }
}
