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
    var lifePoint : Int = 100
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
                                print("I dont't understant, My choice for you :🧛🏻‍♀️ XX78")
                                self.name = "🧛🏻‍♀️ vampire"
                                self.pseudo = "🧛🏻‍♀️ XX78"
                        }
            } else  {
                self.name = "🧛🏻‍♀️ vampire"
                self.pseudo = "🧛🏻‍♀️ XX78"
                    }
        self.weopon = Weapon()
        }
    func life () -> String{
        if lifePoint <= 5 || lifePoint <= 0{
        return "lifePoint: 💔 🚑 ---->⚰️"
        }
        else if  lifePoint > 5 && lifePoint <= 10 {
            return "⚠️⚠️⚠️❣️ lifePoint: 🔴"
        }
        else if lifePoint  > 10 && lifePoint  <= 20 {
            
            return "⚠️⚠️❣️ lifePoint (20%) : 🔴🔴"
        }
        else if lifePoint  > 20 && lifePoint  <= 30 {
            return "⚠️❣️ lifePoint (30 %) : 🔴🔴🔴"
        }
        else if lifePoint > 30 && lifePoint  <= 40{
            return "❣️ lifePoint (40 %) : 🔴🔴🔴🔴"
        }
        else if lifePoint  > 40 && lifePoint  <= 50  {
            return "lifePoint (50 %): 🔴🔴🔴🔴🔴"
        }
        else if lifePoint > 50 && lifePoint <= 60 {
            return "lifePoint: 🔴🔴🔴🔴🔴🟢"
        }
        else if lifePoint  > 60 && lifePoint  <= 70 {
            
            return "lifePoint: 🔴🔴🔴🔴🔴🟢🟢"
        }
        else if lifePoint > 70 && lifePoint  <= 80 {
            return "lifePoint: 🔴🔴🔴🔴🔴🟢🟢🟢"
        }
        else if lifePoint  > 80 && lifePoint <= 90 {
            
            return "lifePoint:【🔴🔴🔴🔴🔴🟢🟢🟢🟢】"
        }
        return "✅🏋🏻 (100 %) "
    }
    
    }
   

