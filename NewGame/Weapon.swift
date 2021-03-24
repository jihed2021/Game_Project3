//
//  Weapon.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation
class Weapon {
    var weaponName : String
    var damage : Int
    
init (weaponName : String , damage : Int){
    self.weaponName = weaponName
    self .damage = damage
}
          func chooseArm () { // retourne l'arme qui va utiliser
    
            print (" choose your arm?"
                    + "\n1. knife 🔪"
                    + "\n2.pistol 🔫"
                    + "\n3.klashnikov"
                    + "\n4.revoler"
                    + "\n5.shotgun"
                    + "\n6.precisionRifle"
                    + "\n7.hammer&pick ⚒"
                    + "\n8.pick ⛏"
                    + "\n9.bombe💣"
                    + "\n10.dagger🗡"
                    + "\n11.axe🪓"
                    + "\n12.crossed swords ⚔️")
  
                        if let choice = readLine() {
                            switch choice {
                                    case "1":
                                        weaponName = "knife 🔪"
                                            damage = 50
                                    case "2":
                                        weaponName = "pistol 🔫"
                                            damage = 100
                                    case "3":
                                        weaponName = "klashnikov"
                                            damage = 150
                                    case "4":
                                        weaponName = "revoler"
                                            damage = 120
                                    case "5":
                                        weaponName = "shotgun"
                                            damage = 200
                                    case "6":
                                        weaponName = "precisionRifle"
                                            damage = 250
                                    case "7":
                                        weaponName = "hammer&pick ⚒"
                                            damage = 60
                                    case "8":
                                        weaponName = "pick ⛏"
                                            damage = 10
                                    case "9":
                                        weaponName = "bombe💣"
                                            damage = 300
                                    case "10":
                                        weaponName = "dagger🗡"
                                            damage = 80
                                    case "11":
                                        weaponName = "axe🪓"
                                            damage = 40
                                    case "12":
                                        weaponName = "crossed swords ⚔️"
                                            damage = 30
                                    default :
                                        print("I dont't understant, please choose your fighters")
                                    }
        
                        }
          }

}


