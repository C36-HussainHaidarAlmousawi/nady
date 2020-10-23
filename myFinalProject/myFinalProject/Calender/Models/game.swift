//
//  game.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/15/20.
//

import Foundation

struct Gameee: Codable,Identifiable {
    
    var id = UUID()
    var MD: String
    var MS: String
    var MT: String
    var HG: String
    var AG: String
    var HN: String
    var AN: String
    
    enum CodingKeys: String, CodingKey{
        case MD = "match_date"
        case HG = "match_hometeam_score"
        case MS = "match_status"
        case MT = "match_time"
        case AG = "match_awayteam_score"
        case HN = "match_hometeam_name"
        case AN = "match_awayteam_name"
        
    }
}
