//
//  game.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/15/20.
//

import Foundation
import UIKit

struct Game: Identifiable {

    var T1img: String
    var T1Goals: Int
    var T2img: String
    var T2Goals: Int
    var live: String
    var time: String
    var id = UUID()
}



let G1 = Game(T1img: "Alarabi",
              T1Goals: 1,
              T2img: "Alarabi",
              T2Goals: 2,
              live: "مباشر",
              time: "٤٥:٠٠")

let G2 = Game(T1img: "Alarabi",
              T1Goals: 2,
              T2img: "Alarabi",
              T2Goals: 1,
              live: "مباشر",
              time: "٨٩:١٣")

let G3 = Game(T1img: "Alarabi",
              T1Goals: 0,
              T2img: "Alarabi",
              T2Goals: 0,
              live: "١٩-اكتوبر-٢٠٢٠",
              time: "٠٠:٠٠")

let G4 = Game(T1img: "Alarabi",
             T1Goals: 3,
             T2img: "Alarabi",
             T2Goals: 2,
             live: "١٨-اكتوبر-٢٠٢٠",
             time: "انتهى")


var games = [G1 , G2 , G3 , G4]
