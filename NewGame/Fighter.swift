//
//  Fighter.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Fighter {
    var name: String
    var pseudo: String
    var lifePoint: Int = 100
    var weopon: Weapon
    init() {
        func askedPseudo() -> String {
            if let myReadLine = readLine() {
                return myReadLine
            } else {
                return askedPseudo()
            }
        }
        func choosePseudo() -> String {
            print("Assigned pseudo to your fighter ?")
            var fighterPseudo = askedPseudo()
                while fighterPseudo == "" {
                    print("please assigned pseudo to your fighter")
                    fighterPseudo = askedPseudo()
                }
               return  fighterPseudo
        }
        print("1. 🥷🏾 ninja||2. 🦸🏻 superHéroine||3. 🧑🏼‍⚖️ juge||4. 🦹🏼 super-vilaine||5. 🧝🏿 elfe||6. 🧛🏻‍♀️ vampire")
        if let choice = readLine() {
                    switch choice {
                    case "1":
                        self.name = "🥷🏾 ninja"
                        self.pseudo = "🥷🏾 " + choosePseudo()
                    case "2":
                        self.name = "🦸🏻 superHéroine"
                        self.pseudo = "🦸🏻 " + choosePseudo()
                    case "3":
                        self.name = "🧑🏼‍⚖️ juge"
                        self.pseudo = "🧑🏼‍⚖️ " + choosePseudo()
                    case "4":
                        self.name = "🦹🏼 super-vilaine"
                        self.pseudo = "🦹🏼 " + choosePseudo()
                    case "5":
                        self.name = "🧝🏿 elfe"
                        self.pseudo = "🧝🏿 " + choosePseudo()
                    case "6":
                        self.name = "🧛🏻‍♀️ vampire"
                        self.pseudo = "🧛🏻‍♀️ " + choosePseudo()
                    default :
                                print("I dont understant your choice ok I choose for you 🧛🏻‍♀️ vampire")
                                self.name = "🧛🏻‍♀️ vampire"
                               self.pseudo = choosePseudo()
                        }
            } else {
                self.name = "🧛🏻‍♀️ vampire"
                self.pseudo = choosePseudo()
                    }
        self.weopon = Weapon()
        }
    func life () -> String {
        if lifePoint < 5 || lifePoint <= 0 {
        return "💔 + 🚑 "
        } else if  lifePoint >= 5 && lifePoint <= 10 {
            return "⚠️❣️(10 %) 🔴"
        } else if lifePoint  > 10 && lifePoint  <= 20 {
            return " ⚠️❣️(20%) 🔴🔴"
        } else if lifePoint  > 20 && lifePoint  <= 30 {
            return "⚠️❣️(30 %) 🔴🔴🔴"
        } else if lifePoint > 30 && lifePoint  <= 40 {
            return "❣️(40 %) 🔴🔴🔴🔴"
        } else if lifePoint  > 40 && lifePoint  <= 50 {
            return "(50 %) 🔴🔴🔴🔴🔴"
        } else if lifePoint > 50 && lifePoint <= 60 {
            return "(60 %) 🔴🔴🔴🔴🔴🟢"
        } else if lifePoint  > 60 && lifePoint  <= 70 {
            return "(70 %) 🔴🔴🔴🔴🔴🟢🟢"
        } else if lifePoint > 70 && lifePoint  <= 80 {
            return "(80 %) 🔴🔴🔴🔴🔴🟢🟢🟢"
        } else if lifePoint  > 80 && lifePoint <= 90 {
            return "(90 %) 🔴🔴🔴🔴🔴🟢🟢🟢🟢"
        }
        return "✅🏋🏻 (100 %) "
    }
    }
