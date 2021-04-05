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
    var round : Int = 1
    var fighterFromTeam1 : Fighter
    var fighterFromTeam2 : Fighter
    
    init () {
        
        // Noms des players ainsi que leurs combattant avec pseudo
        
        self.player1 = Player()
        print ("\(player1.name) this your team : \(player1.fightersName)")
        
        self.player2 = Player()
        print ("\(player2.name) this your team : \(player2.fightersName)")
        self.fighterFromTeam1 = player1.fighters[0]
        self.fighterFromTeam2 = player2.fighters[0]
        
        /* debut de jeu :
         1- choix des combattant
         2 - Affectation d'arme
         3 - un au harsard pour avoir qui peut commencer l'attaque
         4 - le tour du deuxième comabattant pour attaquer
         5 - changement d'arme au hazard a chaque attaque
         6 - en cas d'épuisement de nombre de points de l'un de combattant le player doit changer son combattant et on passe au round suivant
         7 - le jeu se termine dés que un player a utiliser tout ces combattants (son tableau de combattants est vide)
         */
        
        
        
        
        while (player1.fighters.count != 0)  && (player2.fighters.count != 0){  // tant qu'il y a de combatttants le jeu se poursuit
            
            
            print("👉 \(player1.name) please choose your fighter for this round: \(player1.fightersName)")
            
            if let choice = readLine() {      // choix de combattant pour le round pour le 1 er player
                
                if player1.fightersName[0].contains(choice){
                    self.fighterFromTeam1 = player1.fighters[0]
                } else if player1.fightersName[1].contains(choice) {
                    self.fighterFromTeam1 =  player1.fighters[1]
                }else if player1.fightersName[2].contains(choice){
                    self.fighterFromTeam1 =  player1.fighters[2]
                } else{
                    print("🤷🏼‍♂️ 🤷🏼‍♂️ I did not understand your choice, ⛔️ I will choose your first fighter")
                    self.fighterFromTeam1 = player1.fighters[0]
                }
                
            }
            else {
                self.fighterFromTeam1 = player1.fighters[0]
                player1.fighters.remove(at: 0)
            }
            
            print("👉 \(player2.name) please choose your fighter for this round: \(player2.fightersName)")
            
            if let choice = readLine() {        // choix de combattant pour le round pour le 2 eme player
                
                if player2.fightersName[0].contains(choice){
                    self.fighterFromTeam2 = player2.fighters[0]
                } else if player2.fightersName[1].contains(choice) {
                    self.fighterFromTeam2 =  player2.fighters[1]
                }else if player2.fightersName[2].contains(choice){
                    self.fighterFromTeam2 =  player2.fighters[2]
                } else{
                    print("🤷🏼‍♂️ 🤷🏼‍♂️ I did not understand your choice, ⛔️ I will choose your first fighter")
                    self.fighterFromTeam2 = player2.fighters[0]
                }
                
            }
            
            else {
                self.fighterFromTeam2 = player2.fighters[0]
                player2.fighters.remove(at: 0)
            }
            print(" round \(round) :"
                    + "\nPlayer [\(player1.name)]: [\(fighterFromTeam1.pseudo),\(fighterFromTeam1.weopon.weaponName)] "
                    + "\nPlayer [\(player2.name)]: [\(fighterFromTeam2.pseudo),\(fighterFromTeam2.weopon.weaponName)] "
                    + "\n                      🤼Fight.... Fight.... Fight🤼")
            
            // pour commnecer le jeu un au hasard denno qui peut commencer!
            
            let tab = [1,2]
            let randomIndex2 = arc4random_uniform(UInt32(tab.count))
            
            if randomIndex2 == 1 {
                
                print (""
                        + "\n[ \(fighterFromTeam1.pseudo) ] can start attack 🤼")
                
                while (fighterFromTeam1.lifePoint != 0) && (fighterFromTeam2.lifePoint != 0 ) && (fighterFromTeam1.lifePoint > fighterFromTeam2.weopon.weaponDamage) && (fighterFromTeam2.lifePoint > fighterFromTeam1.weopon.weaponDamage) {
                    
                    // Combat , les armes se changent au hasard
                    
                    fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                    fighterFromTeam2.weopon.changeArm()
                    print("\(fighterFromTeam2.pseudo) this your new weapon \(fighterFromTeam2.weopon.weaponName)")
                    fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                    fighterFromTeam1.weopon.changeArm()
                    print("\(fighterFromTeam1.pseudo) this your new weapon \(fighterFromTeam1.weopon.weaponName)")
                    
                }
                // Fin de combat entre les deux premiers joueurs par la mort d'un d'entre eux et ce dernier se retire de la liste
                
                if (fighterFromTeam1.lifePoint <= fighterFromTeam2.weopon.weaponDamage) && (fighterFromTeam2.lifePoint > fighterFromTeam1.weopon.weaponDamage) {
                    print( ""
                            + "\nThe winner 🏅 of the round \(round) is \(fighterFromTeam2.pseudo) from team of :\(player2.name)")
                    if  player1.fightersName[0].contains(fighterFromTeam1.pseudo){
                        player1.fighters.remove(at: 0)
                        player1.fightersName.remove(at: 0)
                        round += 1
                    } else if player1.fightersName[1].contains(fighterFromTeam1.pseudo){
                        player1.fighters.remove(at: 1)
                        player1.fightersName.remove(at: 1)
                        round += 1
                    } else if player1.fightersName[2].contains(fighterFromTeam1.pseudo){
                        player1.fighters.remove(at: 2)
                        player1.fightersName.remove(at: 2)
                        round += 1
                    }
                    
                } else if (fighterFromTeam1.lifePoint > fighterFromTeam2.weopon.weaponDamage) && (fighterFromTeam2.lifePoint <= fighterFromTeam1.weopon.weaponDamage) {
                    print(""
                            + "\nThe winner 🏅 of the round: \(round) is \(fighterFromTeam1.pseudo) from team of :\(player1.name)")
                    if  player2.fightersName[0].contains(fighterFromTeam2.pseudo){
                        player2.fighters.remove(at: 0)
                        player2.fightersName.remove(at: 0)
                        round += 1
                        
                    } else if player2.fightersName[1].contains(fighterFromTeam2.pseudo){
                        player2.fighters.remove(at: 1)
                        player2.fightersName.remove(at: 1)
                        round += 1
                    } else if player2.fightersName[2].contains(fighterFromTeam2.pseudo) {
                        player2.fighters.remove(at: 2)
                        player2.fightersName.remove(at: 2)
                        round += 1
                    }
                }
                
                
            }else {
                
                print(""
                        + "\n[ \(fighterFromTeam2.pseudo) ] can start attack 🤼‍♂️")
                
                while (fighterFromTeam1.lifePoint != 0) && (fighterFromTeam2.lifePoint != 0 ) && (fighterFromTeam1.lifePoint >= fighterFromTeam2.weopon.weaponDamage) && (fighterFromTeam2.lifePoint >= fighterFromTeam1.weopon.weaponDamage) {
                    
                    fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                    fighterFromTeam1.weopon.changeArm()
                    print("\(fighterFromTeam1.pseudo) this your new weapon \(fighterFromTeam1.weopon.weaponName)")
                    fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                    fighterFromTeam2.weopon.changeArm()
                    print("\(fighterFromTeam2.pseudo) this your new weapon \(fighterFromTeam2.weopon.weaponName)")
                }
                if (fighterFromTeam1.lifePoint <= fighterFromTeam2.weopon.weaponDamage) && (fighterFromTeam2.lifePoint > fighterFromTeam1.weopon.weaponDamage) {
                    print( ""
                            + "\nThe winner 🏅 of the round:  \(round) is [ \(fighterFromTeam2.pseudo) ] from team of :\(player2.name)")
                    if  player1.fightersName[0].contains(fighterFromTeam1.pseudo){
                        player1.fighters.remove(at: 0)
                        player1.fightersName.remove(at: 0)
                        round += 1
                        
                    } else if player1.fightersName[1].contains(fighterFromTeam1.pseudo){
                        player1.fighters.remove(at: 1)
                        player1.fightersName.remove(at: 1)
                        round += 1
                    } else if player1.fightersName[2].contains(fighterFromTeam1.pseudo) {
                        player1.fighters.remove(at: 2)
                        player1.fightersName.remove(at: 2)
                        round += 1
                    }
                    
                } else if (fighterFromTeam1.lifePoint > fighterFromTeam2.weopon.weaponDamage) && (fighterFromTeam2.lifePoint <= fighterFromTeam1.weopon.weaponDamage) {
                    
                    print( ""
                            + "\nThe winner 🏅 of the round: \(round) is [ \(fighterFromTeam1.pseudo) ] from team of :\(player1.name)")
                    
                    if  player2.fightersName[0].contains(fighterFromTeam2.pseudo){
                        player2.fighters.remove(at: 0)
                        player2.fightersName.remove(at: 0)
                        round += 1
                        
                    } else if  player2.fightersName[1].contains(fighterFromTeam2.pseudo){
                        player2.fighters.remove(at: 1)
                        player2.fightersName.remove(at: 1)
                        round += 1
                    } else if player2.fightersName[2].contains(fighterFromTeam2.pseudo) {
                        player2.fighters.remove(at: 2)
                        player2.fightersName.remove(at: 2)
                        round += 1
                    }
                }
                
                
            }
        }
        if (player1.fighters.count == 0)  && (player2.fighters.count != 0) { // si la liste du premier player contient des joueurs et le deuxième non donc c'est le premier qui gagne
            
            
            print(""
                    + "\n👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏"
                    + "\n The winner 🏆 of the game is : \( player2.name) 💪💪 ")
            
        }
        if  (player1.fighters.count != 0)  && (player2.fighters.count == 0){ // si la liste du deuxième player contient des joueurs et le deuxième non donc c'est le deuxième qui gagne
            print(""
                    + "\n👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏"
                    + "\n The winner 🏆 of the game is : \( player1.name) 💪💪 ")
        }
        else {
            print("👏👏👏 equal game between 💪\( player1.name)💪 and \(player2.name)💪 💪 ")
        }
    }
    
}






