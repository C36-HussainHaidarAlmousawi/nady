//
//  team.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/16/20.
//

import Foundation

struct Team {
    var Stand: Int
    var TImg: String
    var TName: String
    var Points: Int
    var GP: Int
    var W: Int
    var D: Int
    var L: Int
}


var T1 = Team(Stand: 1, TImg: "Alarabi", TName: "العربي", Points: 15, GP: 5, W: 5, D: 0, L: 0)
var T2 = Team(Stand: 2, TImg: "Alarabi", TName: "العربي", Points: 13, GP: 5, W: 4, D: 1, L: 0)
var T3 = Team(Stand: 3, TImg: "Alarabi", TName: "العربي", Points: 7, GP: 5, W: 3, D: 1, L: 1)
var T4 = Team(Stand: 4, TImg: "Alarabi", TName: "العربي", Points: 6, GP: 5, W: 2, D: 0, L: 3)




var teams = [T1 , T2 , T3 , T4]
