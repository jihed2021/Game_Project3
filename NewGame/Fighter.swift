//
//  Fighter.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

final class Fighter {
    var name: String
    var pseudo: String
    var lifePoint: Int = 100
    var weapon: Weapon
    
    init() {
        print("1. π₯·πΎ ninja β 2. π¦Έπ» superHΓ©roine β 3. π§πΌββοΈ juge β 4. π¦ΉπΌ super-vilaine β 5. π§πΏ elfe β 6. π§π»ββοΈ vampire")
        if let choice = readLine() {
            switch choice {
            case "1":
                self.name = "π₯·πΎ ninja"
                self.pseudo = "π₯·πΎ " + Fighter.choosePseudo()
            case "2":
                self.name = "π¦Έπ» superHΓ©roine"
                self.pseudo = "π¦Έπ» " + Fighter.choosePseudo()
            case "3":
                self.name = "π§πΌββοΈ juge"
                self.pseudo = "π§πΌββοΈ " + Fighter.choosePseudo()
            case "4":
                self.name = "π¦ΉπΌ super-vilaine"
                self.pseudo = "π¦ΉπΌ " + Fighter.choosePseudo()
            case "5":
                self.name = "π§πΏ elfe"
                self.pseudo = "π§πΏ " + Fighter.choosePseudo()
            case "6":
                self.name = "π§π»ββοΈ vampire"
                self.pseudo = "π§π»ββοΈ " + Fighter.choosePseudo()
            default :
                print("I dont understant your choice ok I choose for you π§π»ββοΈ vampire")
                self.name = "π§π»ββοΈ vampire"
                self.pseudo = "π§π»ββοΈ " + Fighter.choosePseudo()
            }
        } else {
            self.name = "π§π»ββοΈ vampire"
            self.pseudo = "π§π»ββοΈ " + Fighter.choosePseudo()
        }
        self.weapon = Weapon()
    }
    
    func life() -> String {
        if lifePoint <= 0 {
            return "β π β"
        } else if  lifePoint > 0 && lifePoint <= 10 {
            return "β οΈβ£οΈ(10 %) π΄"
        } else if lifePoint  > 10 && lifePoint  <= 20 {
            return " β οΈβ£οΈ(20%) π΄π΄"
        } else if lifePoint  > 20 && lifePoint  <= 30 {
            return "β οΈβ£οΈ(30 %) π΄π΄π΄"
        } else if lifePoint > 30 && lifePoint  <= 40 {
            return "β£οΈ(40 %) π΄π΄π΄π΄"
        } else if lifePoint  > 40 && lifePoint  <= 50 {
            return "(50 %) π΄π΄π΄π΄π΄"
        } else if lifePoint > 50 && lifePoint <= 60 {
            return "(60 %) π΄π΄π΄π΄π΄π’"
        } else if lifePoint  > 60 && lifePoint  <= 70 {
            return "(70 %) π΄π΄π΄π΄π΄π’π’"
        } else if lifePoint > 70 && lifePoint  <= 80 {
            return "(80 %) π΄π΄π΄π΄π΄π’π’π’"
        } else if lifePoint  > 80 && lifePoint <= 90 {
            return "(90 %) π΄π΄π΄π΄π΄π’π’π’π’"
        }
        return "βππ» (100 %) "
    }
    
    func isDead() -> Bool {
        return lifePoint <= 0
    }
    
    private static func askedPseudo() -> String {
        if let myReadLine = readLine() {
            return myReadLine
        } else {
            return askedPseudo()
        }
    }
    
    private static func choosePseudo() -> String {
        print("Assigned pseudo to your fighter ?")
        var fighterPseudo = askedPseudo()
        while fighterPseudo == "" {
            print("please assigned pseudo to your fighter")
            fighterPseudo = askedPseudo()
        }
        return  fighterPseudo
    }
}
