//
//  team.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/16/20.
//

import Foundation

struct Team: Codable, Identifiable {
    var id: UUID? = UUID()
    var TN: String
    var S: String
    var MP: String
    var W: String
    var D: String
    var L: String
    var PTS: String

    enum CodingKeys: String, CodingKey{
        case TN = "team_name"
        case S = "overall_league_position"
        case MP = "overall_league_payed"
        case W = "overall_league_W"
        case D = "overall_league_D"
        case L = "overall_league_L"
        case PTS = "overall_league_PTS"
    }
}
/*



"overall_league_position": "1",
"overall_league_payed": "2",
"overall_league_W": "2",
"overall_league_D": "0",
"overall_league_L": "0",
"overall_league_GF": "6",
"overall_league_GA": "2",
"overall_league_PTS": "6",
"home_league_position": "3",
"home_promotion": "",
"home_league_payed": "1",
"home_league_W": "1",
"home_league_D": "0",
"home_league_L": "0",
"home_league_GF": "3",
"home_league_GA": "2",
"home_league_PTS": "3",
"away_league_position": "2",
"away_promotion": "",
"away_league_payed": "1",
"away_league_W": "1",
"away_league_D": "0",
"away_league_L": "0",
"away_league_GF": "3",
"away_league_GA": "0",
"away_league_PTS": "3",
"league_round": "",
"team_badge": "https://apiv2.apifootball.com/badges/4506_al-qadisiya.png"
*/
