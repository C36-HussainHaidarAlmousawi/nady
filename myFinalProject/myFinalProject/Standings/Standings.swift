//
//  Standings.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/16/20.
//

import SwiftUI

struct Standings: View {
    var body: some View {
        
        VStack{
            
            Form{
                VStack{
                    HStack{
                        Text("الفريق")
                        Spacer()
                        Text("النقاط      ")
                        Text("لعب     ")
                        Text("ف     ")
                        Text("ت    ")
                        Text("خ ")
                        
                    }
//                    Stand(T: teams[0])
//                    Stand(T: teams[1])
//                    Stand(T: teams[2])
//                    Stand(T: teams[3])
                }
            }
            VStack{
                ZStack{
                Image(uiImage: #imageLiteral(resourceName: "SignUpp"))
                    .resizable()
                    .scaledToFit()
                    .frame(height: 55)
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "Alarabi"))
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .clipShape(Circle())
                }
                NavigationLink(destination: FC()){
                    Text("العربي").accentColor(Color("Color"))
                }
            }
            HStack{
                VStack{
                    Image(uiImage: #imageLiteral(resourceName: "calendar"))
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                    NavigationLink(destination: calenderCalender()){
                        Text("التقويم").accentColor(Color("Color"))
                    }
                }.padding(.trailing)
                VStack{
                    Image(uiImage: #imageLiteral(resourceName: "rank"))
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                    NavigationLink(destination: Standings()){
                        Text("الترتيب").accentColor(Color("Shadow2"))
                    }
                }.padding(.trailing , 20)
                
                VStack{
                    Image(uiImage: #imageLiteral(resourceName: "shop"))
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                    Text("قريبا").accentColor(Color("Color"))                }.padding(.leading , 20)
                VStack{
                    Image(uiImage: #imageLiteral(resourceName: "more"))
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                    NavigationLink(destination: More()){
                        Text("الحساب").accentColor(Color("Color"))
                    }.navigationBarHidden(true)
                }.padding(.leading)
            }
        }
    }
}

struct Standings_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Standings()
            Standings()
                .preferredColorScheme(.dark)
        }
    }
}


//struct Stand: View {
//    var T: Team!
//    var body: some View {
//        HStack{
//            Text("\(T.Stand).")
//            Image(uiImage: UIImage(named: T.TImg)!)
//                .resizable()
//                .scaledToFit()
//                .frame(height: 50)
//
//            Text(T.TName)
//            Spacer()
//            HStack{
//                Text("\(T.Points)")
//                Spacer()
//                Text("\(T.GP)")
//                Spacer()
//                Text("\(T.W)")
//                Spacer()
//                Text("\(T.D)")
//                Spacer()
//                Text("\(T.L)")
//
//            }
//        }
//    }
//}

struct Team: Codable {
    public var TN: String
    public var S: String
    public var MP: String
    public var W: String
    public var D: String
    public var L: String
    public var PTS: String

    enum CodingKeyss: String, CodingKey{
        case TN = "team_name"
        case S = "overall_league_position"
        case MP = "overall_league_payed"
        case W = "overall_league_W"
        case D = "overall_league_D"
        case L = "overall_league_L"
        case PTS = "overall_league_PTS"

    }
}


func loadTeamData(){
    print("hi")
    guard let url = URL(string:"https://apiv2.apifootball.com/?action=get_standings&league_id=293&APIkey=1a9873166ea217449dfb6aa95a3e235b3cd83cc16507c046fc4cd3ff719c72d3")
    else { return }

    URLSession.shared.dataTask(with: url){(data , response, error) in
        do{
            guard let data = data else { return }
            print("hi2")
            if let decodedData = try? JSONDecoder().decode([Team].self, from: data) {
                DispatchQueue.main.async {
                    for i in decodedData{
                        let teamm = Team(TN: i.TN, S: i.S, MP: i.MP, W: i.W, D: i.D, L: i.L, PTS: i.PTS)

                    }
                }
            }
        }
        catch{
            print("error")
        }
    }.resume()

}


