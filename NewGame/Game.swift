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
    var fighterFromTeam2 : Fighter
   
    init () {
        self.player1 = Player()
        print ("team of \(player1.name) : \(player1.fighters)")
        print("hi \(player1.name) please choose your fighter from your Team?,\(player1.fighters)")
            if let choice = readLine() {
                switch choice {
                case "1":
                    self.fighterFromTeam1 = player1.fighters[0]
                    player1.fighters.remove(at: 0)
                case "2":
                    self.fighterFromTeam1 =  player1.fighters[1]
                    player1.fighters.remove(at: 1)
                case "3":
                    self.fighterFromTeam1 =  player1.fighters[2]
                    player1.fighters.remove(at: 2)
                default:
                    print("I don't understand your choice")
                    self.fighterFromTeam1 = player1.fighters[0]
                    player1.fighters.remove(at: 0)
                }
            }
            else {
                self.fighterFromTeam1 = player1.fighters[0]
                player1.fighters.remove(at: 0)
            }
        self.player2 = Player()
        print ("team of \(player2.name) : \(player2.fighters)")
        print("hi \(player2.name) please choose your player from your Team?")
        
            if let choice = readLine() {
                switch choice {
                case "1":
                    self.fighterFromTeam2 = player2.fighters[0]
                    player2.fighters.remove(at: 0)
                case "2":
                    self.fighterFromTeam2 = player2.fighters[1]
                    player2.fighters.remove(at: 1)
                case "3":
                    self.fighterFromTeam2 = player2.fighters[2]
                    player2.fighters.remove(at: 2)
                default:
                    print("I don't understand your choice")
                    self.fighterFromTeam2 = player2.fighters[0]
                    player2.fighters.remove(at: 0)
                }
            }
            else {
                self.fighterFromTeam2 = player2.fighters[0]
                player2.fighters.remove(at: 0)
            }
    
      // Après choix des combattants on commence le jeu
    // pour commencer le jeu chaque combattant choisi une arme
        
                fighterFromTeam1.weopon.changeArm()
                fighterFromTeam2.weopon.changeArm()
                round += 1
        
        while (player1.fighters.count != 0)  && (player2.fighters.count != 0) {

        // pour commnecer le jeu le combattant qui a une arme plus faible en damage que l'autre peut commencer!
        
            if fighterFromTeam1.weopon.weaponDamage < fighterFromTeam2.weopon.weaponDamage {
            
                print ("fighter1 can start attack")
            
                    while (fighterFromTeam1.lifePoint != 0) && (fighterFromTeam2.lifePoint != 0 ){
               
                // Combat
                
                fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                fighterFromTeam2.weopon.changeArm()
                fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                fighterFromTeam1.weopon.changeArm()
                
                // Fin de combat entre les deux premiers joueurs par la mort d'un d'entre eux
                
                            if (fighterFromTeam1.lifePoint == 0) && (fighterFromTeam2.lifePoint != 0) {
                                print("the winner of the \(round) is \(fighterFromTeam2) ")
                            }else {
                                print("the winner of the \(round) is \(fighterFromTeam1) ")
                            }
                    }
                
            }else {
            
                print("fighter2 can start attack")
           
                    while (fighterFromTeam1.lifePoint != 0) && (fighterFromTeam2.lifePoint != 0 ){
                
                fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                fighterFromTeam1.weopon.changeArm()
                fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                fighterFromTeam2.weopon.changeArm()
                
                            if (fighterFromTeam1.lifePoint == 0) && (fighterFromTeam2.lifePoint != 0) {
                                print( "the winner of the \(round) is \(fighterFromTeam2)")
                    
                            } else{
                                
                                print( "the winner of the \(round) is \(fighterFromTeam1)")
                            }
                    }
            }
        
               
        }
        if (player1.fighters.count == 0)  && (player2.fighters.count != 0) {
            print("the winner of the game is :\( player1)")
            
        }
         if  (player1.fighters.count != 0)  && (player2.fighters.count == 0){
            print("the winner of the game is :\( player2)")
         }
         else {
            print("equal game between \( player1) and \(player2)")
         }
    }
            
}


        



