//
//  Game.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation
class Game {
    var player1: Player
    var player2: Player
    var round: Int = 1
    var score = [Any]()
    init() {
        self.player1 = Player()
        print("\(player1.name) : fighters ➡️ \(player1.fightersName()) ⬅️")
        self.player2 = Player()
        print("\(player2.name) : fighters ➡️ \(player2.fightersName()) ⬅️")
        while (player1.fighters.count != 0)  && (player2.fighters.count != 0) {
            if round % 2 == 0 {
                playRound(attacker: player1, defender: player2)
            } else {
                playRound(attacker: player2, defender: player1)
                }
        }
        if (player1.fighters.count == 0)  && (player2.fighters.count != 0) {
                print(score)
            print("👏👏👏👏👏  The winner 🏆 of the game is : 💪 \( player2.name) 💪 ")
        } else if  (player1.fighters.count != 0)  && (player2.fighters.count == 0) {
                print(score)
            print("👏👏👏👏👏  The winner 🏆 of the game is : 💪 \( player1.name) 💪 ")
        }
    }
    func playRound (attacker: Player, defender: Player) {
        let fighterT1 = attacker.chooseFighter(attacker, defender)
        let fighterT2 = defender.chooseFighterFromOppesingTeams(attacker, defender)
        print("[\(fighterT1.pseudo)]:\(fighterT1.life())🔥🤜 VS 🤛🔥[\(fighterT2.pseudo)]: \(fighterT2.life())"
                + "\n    ⚜️⚜️⚜️ Round : \(round) ⚜️⚜️⚜️ --> \(fighterT1.pseudo) ] you can start attack ")
        while fighterT1.lifePoint >= 5 && fighterT2.lifePoint >= 5 {
            if fighterT1.lifePoint <= 50 && fighterT1.lifePoint >= 5 {
                fighterT1.weopon.changeArm()
                print("[\(fighterT1.pseudo)] your new arm :\(fighterT1.weopon.weaponName)->\(fighterT1.pseudo) attack⚡️")
                fighterT2.lifePoint -= fighterT1.weopon.weaponDamage
                print("[\(fighterT1.pseudo)]:\(fighterT1.life())  VS  [\(fighterT2.pseudo)]: \(fighterT2.life())")
                } else {
                print("\(fighterT1.pseudo) attack ⚡️")
                    fighterT2.lifePoint -= fighterT1.weopon.weaponDamage
                print("[\(fighterT1.pseudo)]:\(fighterT1.life())  VS  [\(fighterT2.pseudo)]: \(fighterT2.life())")
                      }
            if fighterT2.lifePoint <= 50 && fighterT2.lifePoint >= 5 {
                fighterT2.weopon.changeArm()
                print("[\(fighterT2.pseudo)] your new arm :\(fighterT1.weopon.weaponName)->\(fighterT2.pseudo) attack☄️")
                fighterT1.lifePoint -= fighterT2.weopon.weaponDamage
                print("[\(fighterT1.pseudo)]:\(fighterT1.life())  VS  [\(fighterT2.pseudo)]: \(fighterT2.life())")
                    } else {
                print("\(fighterT2.pseudo) attack ☄️")
                        fighterT1.lifePoint -= fighterT2.weopon.weaponDamage
                print("[\(fighterT1.pseudo)]:\(fighterT1.life())  VS  [\(fighterT2.pseudo)]: \(fighterT2.life())")
                          }
        }
        if (fighterT2.lifePoint >= 5) && (fighterT1.lifePoint < 5) {
            print("❌\(fighterT1.pseudo)❌ The🏅 in round \(round) is[\(fighterT2.pseudo)] from team ⟪\(defender.name)⟫")
            for(index, fighter) in attacker.fighters.enumerated() {
                if  fighter.pseudo.contains(fighterT1.pseudo) {
            score.append("round: \(round) ||\(attacker.name):\(fighterT1.pseudo)[\(fighterT1.lifePoint)]"
                            + "\n ||\(defender.name):\(fighterT2.pseudo)[\(fighterT2.lifePoint)]")
                    attacker.fighters.remove(at: index)
                    round += 1
                }
            }
        } else if (fighterT1.lifePoint >= 5) && (fighterT2.lifePoint < 5) {
            print("❌\(fighterT2.pseudo)❌The🏅 in round:\(round) is[\(fighterT1.pseudo)] from team ⟪\(attacker.name)⟫")
            for(index, fighter) in defender.fighters.enumerated() {
                if  fighter.pseudo.contains(fighterT2.pseudo) {
                    score.append("round: \(round) ||\(attacker.name):\(fighterT1.pseudo)[\(fighterT1.lifePoint)]"
                                    + "\n ||\(defender.name):\(fighterT2.pseudo)[\(fighterT2.lifePoint)]")
                    defender.fighters.remove(at: index)
                    round += 1
                }
            }
        }
}
}
