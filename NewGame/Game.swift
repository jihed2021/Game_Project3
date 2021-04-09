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
        print("\(player1.name) : fighters \(player1.fightersName())")
        self.player2 = Player()
        print("\(player2) : fighters \(player2.fightersName())")
        self.fighterFromTeam1 = player1.fighters[0]
        self.fighterFromTeam2 = player2.fighters[0]
        while (player1.fighters.count != 0)  && (player2.fighters.count != 0){  // tant qu'il y a de combatttants le jeu se poursuit
            print ("\(player1.name)  : \(player1.fightersName())  🔥 🤜 VS 🤛 🔥  \(player2.name) : [\(player2.fightersName())]")
            print("👉 \(player1.name) please choose your fighter for this round:")
            for fighter in player1.fightersName(){
                print(fighter)
            }
            if let value = readLine(),let choice = Int(value) {      // choix de combattant pour le round pour le 1 er player
                if choice == 0 , choice <= player1.fighters.count - 1 {
                    self.fighterFromTeam1 = player1.fighters[0]
                } else if choice == 1 , choice <= player1.fighters.count - 1 {
                    self.fighterFromTeam1 =  player1.fighters[1]
                }else if choice == 2 , choice <= player1.fighters.count - 1 {
                    self.fighterFromTeam1 =  player1.fighters[2]
                } else{
                    print("🤷🏼‍♂️ 🤷🏼‍♂️ I did not understand your choice, ⛔️ I will choose your first fighter")
                    self.fighterFromTeam1 = player1.fighters[0]
                }
            }
            else {
                self.fighterFromTeam1 = player1.fighters[0]
            }
            print("👉 \(player2.name) please choose your fighter for this round:")
            for fighter in player2.fightersName(){
                print(fighter)
            }
            if let value = readLine(),let choice = Int(value) {        // choix de combattant pour le round pour le 2 eme player
                if choice == 0 , choice <= player1.fighters.count - 1 {
                    self.fighterFromTeam2 = player2.fighters[0]
                } else if choice == 1 , choice <= player1.fighters.count - 1  {
                    self.fighterFromTeam2 =  player2.fighters[1]
                }else if choice == 2 , choice <= player1.fighters.count - 1 {
                    self.fighterFromTeam2 =  player2.fighters[2]
                } else{
                    print("🤷🏼‍♂️ 🤷🏼‍♂️ I did not understand your choice, ⛔️ I will choose your first fighter")
                    self.fighterFromTeam2 = player2.fighters[0]
                }
            }
            else {
                self.fighterFromTeam2 = player2.fighters[0]
            }
            // pour commnecer le jeu un au hasard denno qui peut commencer!
            if round % 2 == 0 {
                
                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗"
                        + "\n       ⚜️⚜️⚜️ Round : \(round) ⚜️⚜️⚜️"
                        + "\n     🤼🤜 Fight.... Fight.... Fight 🤛🤼"
                        + "\n \(fighterFromTeam1.pseudo) you can start attack")
                                    while fighterFromTeam1.lifePoint > 5 && fighterFromTeam2.lifePoint > 5 {
                
                                            if fighterFromTeam1.lifePoint <= 50 && fighterFromTeam1.lifePoint >= 5 {
                                                print("\(fighterFromTeam1.pseudo) do you need to change arm ⁉️ (y/n)")
                                                    if let choice = readLine() {
                                                        switch choice {
                                                        case "y":
                                                            fighterFromTeam1.weopon.changeArm()
                                                            print ("This is your new arm \(fighterFromTeam1.weopon.weaponName)")
                                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                                            fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        case "n":
                                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                                            fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        default :
                                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                                            fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                            }
                                                    }
                                                    else {
                                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                                            fighterFromTeam2.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        }
                                            } else {
                                                print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                                fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                            }
                                            if fighterFromTeam2.lifePoint <= 50 && fighterFromTeam2.lifePoint >= 5 {
                                                print("\(fighterFromTeam2.pseudo) do you need to change arm ⁉️ (y/n)")
                        
                                                    if let choice = readLine() {
                                                        switch choice {
                                                        case "y":
                                                            fighterFromTeam2.weopon.changeArm()
                                                            print ("This is your new arm \(fighterFromTeam2.weopon.weaponName)")
                                                            print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                            fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        case "n":
                                                            print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                            fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        default :
                                                            print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                            fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        }
                                                    }
                                                    else {
                                                            print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                            fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        }
                                            } else {
                                                print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                            }
            
                                        if (fighterFromTeam2.lifePoint > 5) && (fighterFromTeam1.lifePoint < 5) {
                                            print( "❗️❌ \(fighterFromTeam1.pseudo) ❗️❌ "
                                                    + "\nThe winner 🏅 of the round \(round) is \(fighterFromTeam2.pseudo) from team of :\(player2.name)")
                                            for(index, fighter) in player1.fighters.enumerated(){
                                                if  fighter.pseudo.contains(fighterFromTeam1.pseudo) {
                                                    player1.fighters.remove(at: index)
                                                }
                                            }
                                            
                                        } else if (fighterFromTeam1.lifePoint > 5) && (fighterFromTeam2.lifePoint < 5) {
                                            print("❗️❌ \(fighterFromTeam2.pseudo) ❗️❌ "
                                                    + "\nThe winner 🏅 of the round: \(round) is \(fighterFromTeam1.pseudo) from team of :\(player1.name)")
                                            for(index, fighter) in player2.fighters.enumerated(){
                                                if  fighter.pseudo.contains(fighterFromTeam2.pseudo) {
                                                    player2.fighters.remove(at: index)
                                                }
                                            }
                                            }
                                    }
                }else {
                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗"
                        + "\n     ⚜️⚜️⚜️ Round : \(round) ⚜️⚜️⚜️"
                        + "\n"
                        + "\n🤼🤜 Fight.... Fight.... Fight 🤛🤼"
                        + "\n \(fighterFromTeam2.pseudo) you can start attack")
                       
                      while fighterFromTeam1.lifePoint > 5 && fighterFromTeam2.lifePoint > 5 {

                             if fighterFromTeam2.lifePoint <= 50 && fighterFromTeam2.lifePoint >= 5 {
                                print("\(fighterFromTeam2.pseudo) do you need to change arm ⁉️ (y/n)")
                                    if let choice = readLine() {
                                        switch choice {
                                            case "y":
                                                fighterFromTeam2.weopon.changeArm()
                                                print ("This is your new arm \(fighterFromTeam2.weopon.weaponName)")
                                                print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                            case "n":
                                                print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                            default :
                                                print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                                        }
                            
                                    }
                                    else {
                                                print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                                fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                                print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                        }
                        
                            } else {
                                        print( "\n🤼 \(fighterFromTeam2.pseudo) attack ☄️☄️☄️")
                                        fighterFromTeam1.lifePoint -= fighterFromTeam2.weopon.weaponDamage
                                        print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                    }
                    
                            if fighterFromTeam1.lifePoint <= 50 && fighterFromTeam1.lifePoint >= 5 {
                                print("\(fighterFromTeam1.pseudo) do you need to change arm ⁉️ (y/n)")
                                if let choice = readLine() {
                                        switch choice {
                                        case "y":
                                            fighterFromTeam1.weopon.changeArm()
                                
                                            print ("This is your new arm \(fighterFromTeam1.weopon.weaponName)")
                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                            fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                        case "n":
                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                            fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                        default :
                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                            fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                        }
                            
                                    } else {
                                            print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                            fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                            print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                        }
                        
                                } else {
                                        print ("\n🤼 \(fighterFromTeam1.pseudo) attack ⚡️⚡️⚡️")
                                        fighterFromTeam2.lifePoint -= fighterFromTeam1.weopon.weaponDamage
                                        print ("〖\(fighterFromTeam1.pseudo):\(fighterFromTeam1.lifePoint) \(fighterFromTeam1.life())  VS  \(fighterFromTeam2.pseudo):\(fighterFromTeam2.lifePoint) \(fighterFromTeam2.life())〗")
                                    }
                      }
                }
                // Fin de combat entre les deux premiers joueurs par la mort d'un d'entre eux et ce dernier se retire de la liste
                
                if (fighterFromTeam2.lifePoint >= 5) && (fighterFromTeam1.lifePoint < 5) {
                    print( "❗️❌ \(fighterFromTeam1.pseudo) ❗️❌ "
                            + "\nThe winner 🏅 of the round \(round) is \(fighterFromTeam2.pseudo) from team of :\(player2.name)")
                    for(index, fighter) in player1.fighters.enumerated(){
                        if  fighter.pseudo.contains(fighterFromTeam1.pseudo) {
                            player1.fighters.remove(at: index)
                        }
                    }
                    
                } else if (fighterFromTeam1.lifePoint > 5) && (fighterFromTeam2.lifePoint < 5) {
                    print("❗️❌ \(fighterFromTeam2.pseudo) ❗️❌ "
                            + "\nThe winner 🏅 of the round: \(round) is \(fighterFromTeam1.pseudo) from team of :\(player1.name)")
                    for(index, fighter) in player2.fighters.enumerated(){
                        if  fighter.pseudo.contains(fighterFromTeam2.pseudo) {
                            player2.fighters.remove(at: index)
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






