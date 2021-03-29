//
//  Game.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Game {

    var player1 : Player
    var player2 : Player
    var round : Int = 0
    var fighterFromTeam1 : Fighter
    var fighterFromTeams2 : Fighter
    var winner :  Fighter
    init (player1 : Player , player2 : Player , fighterFromTeam1:Fighter,fighterFromTeams2 : Fighter , winner :Fighter ) {
        self.player1 = player1
        self.player2 = player2
        self.fighterFromTeam1 = fighterFromTeam1
        self.fighterFromTeams2 = fighterFromTeams2
        self.winner = winner
    }
    
    func choosePlayer1() -> Fighter {
       
        print("please choose your player from your Team?")
            if let choice = readLine() {
                switch choice {
                case "1":
                    fighterFromTeam1 = player1.fighters[0]
                    player1.fighters.remove(at: 0)
                case "2":
                    fighterFromTeam1 =  player1.fighters[1]
                    player1.fighters.remove(at: 1)
                case "3":
                    fighterFromTeam1 =  player1.fighters[2]
                    player1.fighters.remove(at: 2)
                default:
                    print("I don't understand your choice")
                }
            }
        return fighterFromTeam1
            }
    func choosePlayer2 () ->Fighter {
        
        print("please choose your player from your Team?")
        
            if let choice = readLine() {
                switch choice {
                case "1":
                    fighterFromTeams2 = player2.fighters[0]
                    player2.fighters.remove(at: 0)
                case "2":
                    fighterFromTeams2 = player2.fighters[1]
                    player2.fighters.remove(at: 1)
                case "3":
                    fighterFromTeams2 = player2.fighters[2]
                    player2.fighters.remove(at: 2)
                default:
                    print("I don't understand your choice")
                }
            }
        return fighterFromTeams2
    }
      // Après choix des combattants on commence le jeu
        
    func Fight () -> String {

       
        while (player1.fighters.count != 0)  && (player2.fighters.count != 0) {
            
        // pour commencer le jeu chaque combattant choisi une arme
    
            choosePlayer1().weopon.chooseArm()
            choosePlayer2().weopon.chooseArm()
            round += 1
        
        
        // pour commnecer le jeu le combattant qui a une arme plus faible en damage que l'autre peut commencer!
        
            if fighterFromTeam1.weopon.weaponDamage < fighterFromTeams2.weopon.weaponDamage {
            
                print ("fighter1 can start attack")
            
                    while (fighterFromTeam1.lifePoint != 0) && (fighterFromTeams2.lifePoint != 0 ){
               
                // Combat
                
                fighterFromTeams2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                fighterFromTeams2.weopon.changeArm()
                fighterFromTeam1.lifePoint -= fighterFromTeams2.weopon.weaponDamage
                fighterFromTeam1.weopon.changeArm()
                
                // Fin de combat entre les deux premiers joueurs par la mort d'un d'entre eux
                
                            if (fighterFromTeam1.lifePoint == 0) && (fighterFromTeams2.lifePoint != 0) {
                    
                                print ("the winner is \(fighterFromTeams2)")
                                winner = fighterFromTeams2
                                fighterFromTeam1 = choosePlayer1()
                       
                            }else {
                                print ("the winner is \(fighterFromTeam1)")
                                winner = fighterFromTeam1
                                fighterFromTeams2 = choosePlayer2()
                            }
                    }
                return "the winner of the \(round) is \(winner) "
            }else {
            
                print("fighter2 can start attack")
           
                    while (fighterFromTeam1.lifePoint != 0) && (fighterFromTeams2.lifePoint != 0 ){
                
                fighterFromTeam1.lifePoint -= fighterFromTeams2.weopon.weaponDamage
                fighterFromTeam1.weopon.changeArm()
                fighterFromTeams2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                fighterFromTeams2.weopon.changeArm()
                
                            if (fighterFromTeam1.lifePoint == 0) && (fighterFromTeams2.lifePoint != 0) {
                                print ("the winner is \(fighterFromTeams2)")
                                winner = fighterFromTeams2
                    
                            } else{
                                print ("the winner is \(fighterFromTeam1)")
                                winner = fighterFromTeam1
                            }
                    }
            }
        
                return "the winner of the \(round) is \(winner) "
        }
        if (player1.fighters.count == 0)  && (player2.fighters.count != 0) {
            return "the winner of the game is :\( player1)"
            
        }
         if  (player1.fighters.count != 0)  && (player2.fighters.count == 0){
            return "the winner of the game is :\( player2)"
         }
         else {
            return "equal game between \( player1) and \(player2)"
         }
    }
            
}


        



