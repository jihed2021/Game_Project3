//
//  Fighter.swift
//  NewGame
//
//  Created by Jihed Agrebaoui on 23/03/2021.
//

import Foundation

class Fighter {
    
    var name : String
    var pseudo : String
    var lifePoint : Int = 1000
    var weopon : Weapon
    
    
    init (){
        
        print (""
                + "\n1. 🥷🏾 ninja"
                + "\n2. 🦸🏻 superHéroine"
                + "\n3. 🧑🏼‍⚖️ juge"
                + "\n4. 🦹🏼 super-vilaine"
                + "\n5. 🧝🏿 elfe"
                + "\n6. 🧛🏻‍♀️ vampire")
        
        //    Récupérer la réponse du choix du combattant avec son pseudo
        
            if let choice = readLine() {
                    switch choice {
                            case "1":
                                    self.name = "🥷🏾 ninja"
                                    print ("Assigned pseudo to your fighter ?")
                                    if let pseudo = readLine(){
                                        self.pseudo = "🥷🏾 \(pseudo)"
                                                }else {
                                                    print ("I dont't understant your pseudo")
                                                    self.pseudo = "🥷🏾 lili11"
                                                    }
                
                            case "2":
                                    self.name = "🦸🏻 superHéroine"
                                    print ("Assigned pseudo to your fighter ?")
                                    if let pseudo = readLine(){
                                        self.pseudo = "🦸🏻 \(pseudo)"
                                            }else {
                                                print ("I dont't understant your pseudo")
                                                self.pseudo = "🦸🏻 moms01"
                                            }
                
                            case "3":
                                    self.name = "🧑🏼‍⚖️ juge"
                                    print ("Assigned pseudo to your fighter ?")
                                    if let pseudo = readLine(){
                                        self.pseudo = "🧑🏼‍⚖️ \(pseudo)"
                                            }else {
                                                print ("I dont't understant your pseudo")
                                                self.pseudo = "🧑🏼‍⚖️ titi60"
                                            }
                
                            case "4":
                                    self.name = "🦹🏼 super-vilaine"
                                    print ("Assigned pseudo to your fighter ?")
                                    if let pseudo = readLine(){
                                        self.pseudo = "🦹🏼  \(pseudo)"
                                            }else {
                                                print ("I dont't understant your pseudo")
                                                self.pseudo = "🦹🏼 rikiki77"
                                            }
                
                            case "5":
                                    self.name = "🧝🏿 elfe"
                                    print ("Assigned pseudo to your fighter ?")
                                    if let pseudo = readLine(){
                                        self.pseudo = "🧝🏿 \(pseudo)"
                                            }else {
                                                print ("I dont't understant your pseudo")
                                                self.pseudo = "🧝🏿 Koko95"
                                            }
                
                            case "6":
                                    self.name = "🧛🏻‍♀️ vampire"
                                    print ("Assigned pseudo to your fighter ?")
                                    if let pseudo = readLine(){
                                        self.pseudo = "🧛🏻‍♀️ \(pseudo)"
                                    } else {
                                        print ("I dont't understant your pseudo")
                                        self.pseudo = "🧛🏻‍♀️ Kiki29"
                                    }
                
                            default :
                                print("I dont't understant, My choice for you")
                                self.name = "🧛🏻‍♀️ vampire"
                                self.pseudo = "🧛🏻‍♀️ XX78"
                        }
            } else  {
                self.name = "🧛🏻‍♀️ vampire"
                self.pseudo = "🧛🏻‍♀️ XX78"
                    }
        self.weopon = Weapon()
        }
    
    
    }

