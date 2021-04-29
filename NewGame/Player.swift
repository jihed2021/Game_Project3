//
//  Player.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

final class Player {
    var name: String = ""
    var fighters = [Fighter]()
    
    init() {
        self.name = askForName()
        for index in 1...3 {
            print(""
                    + "\nchoose your \(index) fighter from list below ?")
            let fighter = Fighter()
            self.fighters.append(fighter)
        }
    }
    
    func fightersName() -> [String] {
        var names = [String]()
        for (index, fighter) in fighters.enumerated() {
            names.append("\(index).\(fighter.pseudo) [LP:\(fighter.lifePoint), \(fighter.weapon.name)]")
        }
        return names
    }
    
    func askedForfighter() -> Int {
        if let myreadline = readLine(), let intReadline = Int(myreadline) {
            return intReadline
        } else {
            print("please choose your fighter for this round")
            return askedForfighter()
        }
    }
    
    func chooseFighter(_ attacker: Player, _ defender: Player) -> Fighter {
        var fighterFromTeam1: Fighter
        print("👉 〔 \(attacker.name) 〕 please choose your fighter for this round:")
        for fighter in attacker.fightersName() {
            print(fighter)
        }
        let choice = askedForfighter()
        if choice == 0, choice <= attacker.fighters.count - 1 {
            fighterFromTeam1 = attacker.fighters[0]
            return fighterFromTeam1
        } else if choice == 1, choice <= attacker.fighters.count - 1 {
            fighterFromTeam1 =  attacker.fighters[1]
            return fighterFromTeam1
        } else if choice == 2, choice <= attacker.fighters.count - 1 {
            fighterFromTeam1 =  attacker.fighters[2]
            return fighterFromTeam1
        } else {
            print("🤷🏼‍♂️ 🤷🏼‍♂️ I did not understand your choice, ⛔️ I will choose your first fighter")
            fighterFromTeam1 = attacker.fighters[0]
            return fighterFromTeam1
        }
    }
    
    func askedForOpposingfighter() -> Int {
        if let myreadline = readLine(), let intReadline = Int(myreadline) {
            return intReadline
        } else {
            print("please choose opposing fighter for this round")
            return askedForfighter()
        }
    }
    
    func chooseFighterFromOpposingTeams(_ attacker: Player, _ defender: Player) -> Fighter {
        var fighterFromTeam2: Fighter
        print("👉 〔\(attacker.name)〕 please choose fighter to fight from team of 〔\(defender.name)〕 for this round:")
        for fighter in defender.fightersName() {
            print(fighter)
        }
        let choice = askedForOpposingfighter()
        if choice == 0, choice <= defender.fighters.count - 1 {
            fighterFromTeam2 = defender.fighters[0]
            return fighterFromTeam2
        } else if choice == 1, choice <= defender.fighters.count - 1 {
            fighterFromTeam2 =  defender.fighters[1]
            return fighterFromTeam2
        } else if choice == 2, choice <= defender.fighters.count - 1 {
            fighterFromTeam2 =  defender.fighters[2]
            return fighterFromTeam2
        } else {
            print("🤷🏼‍♂️ 🤷🏼‍♂️ I did not understand your choice, ⛔️ I will choose your first fighter")
            fighterFromTeam2 = defender.fighters[0]
            return fighterFromTeam2
        }
    }
    
    func hasAlivePlayer() -> Bool {
        for _ in fighters {
            return true
        }
        return false
    }
    
    func checkForDeadFighters() {
        for (index, fighter) in fighters.enumerated() {
            if fighter.isDead() {
                fighters.remove(at: index)
                print("❌ \(fighter.pseudo) ❌ is dead ⚰️")
            }
        }
    }
    
    private func betterReadLine() -> String {
        if let myReadLine = readLine() {
            return myReadLine
        } else {
            return betterReadLine()
        }
    }
    
    private func askForName() -> String {
        print("Hello 🤙 your are a player in  🔥☠️👊 MortelCombat 👊☠️🔥"
                + "\nwhat is your name please?")
        var nameChoosed = betterReadLine()
        while nameChoosed == ""{
            print("please whrite your name")
            nameChoosed = betterReadLine()
        }
        print("hi \(nameChoosed) now you will choose your three fighters for game" )
        return nameChoosed
    }
}
