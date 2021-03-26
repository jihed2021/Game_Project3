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
    
    init (weaponName : String , weaponDamage: Int){
        self.weaponName = weaponName
        self.weaponDamage = weaponDamage
    }
    
    func chooseArm ()  { // retourne l'arme qui veut utiliser
        
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
                                self.weaponName = "knife 🔪"
                                self.weaponDamage = 50
                              case "2":
                                self.weaponName = "pistol 🔫"
                                self.weaponDamage = 100
                              case "3":
                                self.weaponName = "klashnikov"
                                self.weaponDamage = 150
                              case "4":
                                self.weaponName = "revoler"
                                self.weaponDamage = 120
                              case "5":
                                self.weaponName = "shotgun"
                                self.weaponDamage = 200
                              case "6":
                                self.weaponName = "precisionRifle"
                                self.weaponDamage = 250
                              case "7":
                                self.weaponName = "hammer&pick ⚒"
                                self.weaponDamage  = 60
                              case "8":
                                self.weaponName = "pick ⛏"
                                self.weaponDamage = 10
                              case "9":
                                self.weaponName = "bombe💣"
                                self.weaponDamage  = 300
                              case "10":
                                self.weaponName = "dagger🗡"
                                self.weaponDamage = 80
                              case "11":
                                self.weaponName = "axe🪓"
                                self.weaponDamage = 40
                              case "12":
                                self.weaponName = "crossed swords ⚔️"
                                self.weaponDamage = 30
                              default :
                                  print("I dont't understant, please choose your fighters")
                              }
                  }
    }
    func changeArm (){ // permet de changer l'arme au hasard
      let arms = [ "1.knife 🔪", "2.pistol 🔫", "3.klashnikov ", "4.revoler","5.shotgun" , "6.precisionRifle", "7.hammer&pick ⚒","8.pick ⛏","9.bombe💣", "10.dagger🗡" ,"11.axe🪓","12.crossed swords ⚔️"]
        let damage = [100, 25, 300, 450,500 ,50,40,70,500,150 ,80,100]
       
        let randomIndex = arc4random_uniform(UInt32(arms.count))
        
        self.weaponName =  arms[Int(randomIndex)]
        self.weaponDamage = damage[Int (randomIndex)]
        
        
    }
}

