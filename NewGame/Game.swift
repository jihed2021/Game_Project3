//
//  Game.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

final class Game {
    var player1: Player
    var player2: Player
    var round: Int = 1
    var results = [Any]()
    init() {
        self.player1 = Player()
        print("\(player1.name) : fighters ➡️ \(player1.fightersName()) ⬅️")
        self.player2 = Player()
        print("\(player2.name) : fighters ➡️ \(player2.fightersName()) ⬅️")
    }
    func playRound (attacker: Player, defender: Player) {
        let fighterT1 = attacker.chooseFighter(attacker, defender)
        let fighterT2 = defender.chooseFighterFromOpposingTeams(attacker, defender)
        print("[\(fighterT1.pseudo)]:\(fighterT1.life())🔥🤜 VS 🤛🔥[\(fighterT2.pseudo)]: \(fighterT2.life())"
                + "\n    ⚜️⚜️⚜️ Round : \(round) ⚜️⚜️⚜️ --> [\(fighterT1.pseudo)] you can start attack ")
        fighterT1.weopon.changeArm()
        print("[\(fighterT1.pseudo)] your new arm :\(fighterT1.weopon.weaponName) -> \(fighterT1.pseudo) attack⚡️")
        fighterT2.lifePoint -= fighterT1.weopon.weaponDamage
        print("[\(fighterT1.pseudo)]:\(fighterT1.life())  VS  [\(fighterT2.pseudo)]: \(fighterT2.life())")
        defender.checkForDeadFighters()
        results += score(round: round, ftr1: fighterT1, ftr2: fighterT2)
        round += 1
    }
    func startBattle() {
        while player1.hasAlivePlayer()  && player2.hasAlivePlayer() {
            if round % 2 == 0 {
                playRound(attacker: player2, defender: player1)
            } else {
                playRound(attacker: player1, defender: player2)
            }
        }
        showFinalResults()
    }
    private func showFinalResults() {
        if (player1.fighters.count == 0)  && (player2.fighters.count != 0) {
            print("             🙅🏾‍♂️  【 Game Over 】  🙅🏿"
                    + "\n \(results)")
            print("👏👏👏👏👏  The winner 🏆 of the game is : 💪 \( player2.name) 💪 ")
        } else if  (player1.fighters.count != 0)  && (player2.fighters.count == 0) {
            print("             🙅🏾‍♂️  【 Game Over 】  🙅🏿"
                    + "\n \(results)")
            print("👏👏👏👏👏  The winner 🏆 of the game is : 💪 \( player1.name) 💪 ")
        }
    }
    func score (round: Int, ftr1: Fighter, ftr2: Fighter) -> [String] {
        var scoreForRound = [String]()
        scoreForRound.append("Round_\(round) : \(ftr1.pseudo).\(ftr1.lifePoint) VS \(ftr2.pseudo).\(ftr2.lifePoint)")
        return scoreForRound
    }
}
