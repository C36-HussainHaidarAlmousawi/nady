//
//  Standings.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/16/20.
//

import SwiftUI

struct Standings: View {
    
    @State var games: [Team] = []
    
    var body: some View {
        NavigationView{
        VStack{
             
            Form{
                    HStack{
                        Text("الفريق")
                        Spacer()
                        Text("النقاط      ")
                        Text("لعب     ")
                        Text("ف     ")
                        Text("ت    ")
                        Text("خ ")
                    }
                ForEach(games) {item in
                    HStack{
                        Text("\(item.S).")
                        Image(uiImage: UIImage(named: item.TN)!)
                        Spacer()
                        Text(item.PTS)
                        Text(item.MP)
                        Text(item.W)
                        Text(item.D)
                        Text(item.L)
                    }
                }
            }
                
                HStack{
                    Group{
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
                            ZStack{
                                Image(uiImage: #imageLiteral(resourceName: "SignUpp"))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 55)
                                    .clipShape(Circle())
                                Image(uiImage: #imageLiteral(resourceName: "Al Arabi"))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                    .clipShape(Circle())
                            }
                            NavigationLink(destination: FC()){
                                Text("العربي").accentColor(Color("Color"))
                            }.navigationBarHidden(true)
                        }.padding(.bottom, 50)
                        VStack{
                            Image(uiImage: #imageLiteral(resourceName: "shop"))
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                            Text("قريبا").accentColor(Color("Color"))
                        }.padding(.leading , 20)
                        VStack{
                            Image(uiImage: #imageLiteral(resourceName: "more"))
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                            NavigationLink(destination: More()){
                                Text("الحساب").accentColor(Color("Color"))
                            }
                        }.padding(.leading)
                    }
                }
        }.onAppear{
            loadTeamData()
            print("on appear")

        }
        }.navigationBarHidden(true)
    }
   
    func loadTeamData() {
        var arrayTeam: [Team] = []

        guard let url = URL(string: "https://apiv2.apifootball.com/?action=get_standings&league_id=293&APIkey=1a9873166ea217449dfb6aa95a3e235b3cd83cc16507c046fc4cd3ff719c72d3")
        else { return }

        URLSession.shared.dataTask(with: url){(data , response , error)  in
            do{
                guard let data = data else { return }
                if let decodedData = try? JSONDecoder().decode([Team].self, from: data) {
                    DispatchQueue.main.async {
                        for i in decodedData {
                            arrayTeam.append(Team(TN: i.TN, S: i.S, MP: i.MP, W: i.W, D: i.D, L: i.L, PTS: i.PTS))
                            games = arrayTeam
                        }
                    }
                } else {
                    print("errorrrrrrrrrrrrr")
                }
            }

        }.resume()
    }
}


struct Standings_Previews: PreviewProvider {
    static var previews: some View {
        Standings()
    }
}
