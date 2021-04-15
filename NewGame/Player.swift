//
//  Player.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Player {
    let name: String
    var fighters = [Fighter]()
    init() {
        print("Hello 🤙 your are a player in  🔥☠️👊 MortelCombat 👊☠️🔥"
               + "\nwhat is your name please?")
        if let name = readLine() {
            self.name = name
            print(""
                  + "\nWelcome \(name) , now you will choose your three fighter:")
                    } else {
                print("I dont't understant your name")
                self.name = "djo"
            print("Welcome \(name) , now you will choose your 3 fighters:")
                        }
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
            names.append("\(index). \(fighter.pseudo)")
        }
        return names
    }
    func chooseFighter (_ attacker: Player, _ defender: Player) -> Fighter {
        var fighterFromTeam1: Fighter
        print("👉 〔 \(attacker.name) 〕 please choose your fighter for this round:")
        for fighter in attacker.fightersName() {
            print(fighter)
          }
        if let value = readLine(), let choice = Int(value) {
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
        } else {
            fighterFromTeam1 = attacker.fighters[0]
            return fighterFromTeam1
        }
    }
    func chooseFighterFromOppesingTeams (_ attacker: Player, _ defender: Player) -> Fighter {
        var fighterFromTeam2: Fighter
        print("👉 〔\(attacker.name)〕 please choose fighter to fight from team of 〔\(defender.name)〕 for this round:")
        for fighter in defender.fightersName() {
            print(fighter)
        }
       if let value = readLine(), let choice = Int(value) {
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
        } else {
            fighterFromTeam2 = defender.fighters[0]
            return fighterFromTeam2
        }
    }
}
