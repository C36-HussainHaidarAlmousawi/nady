//
//  calenderCalender.swift
//  myFinalProject
//
//  Created by Hussain Haidar Almousawi on 10/15/20.
//
import SwiftUI

struct calenderCalender: View {
    
  //  @State var game: [Gameee]
    var body: some View {
       
        
            VStack{

              //  Button("refresh") {loadData()}
                Form{
                    Text("game[0].HG ?? ")
                }

               
                
                HStack{
                    VStack{
                        Image(uiImage: #imageLiteral(resourceName: "calendar"))
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                        NavigationLink(destination: calenderCalender()){
                            Text("التقويم").accentColor(Color("Shadow2"))
                        }
                    }.padding(.trailing)
                    VStack{
                        Image(uiImage: #imageLiteral(resourceName: "rank"))
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
                        NavigationLink(destination: Standings()){
                            Text("الترتيب").accentColor(Color("Color"))
                        }
                    }.padding(.trailing , 20)
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
    }
//        }.onAppear {
//            loadData()
//        }
    }

struct calenderCalender_Previews: PreviewProvider {
    static var previews: some View {

        calenderCalender()

    }
}

struct Gameee: Codable {
    public var MD: String
    public var MS: String
    public var MT: String
    public var HG: String
    public var AG: String
    public var HN: String
    public var AN: String

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


func loadData(){
    print("hi")
    guard let url = URL(string:"https://apiv2.apifootball.com/?action=get_predictions&from=0000-00-00&to=3000-12-31&league_id=293&APIkey=1a9873166ea217449dfb6aa95a3e235b3cd83cc16507c046fc4cd3ff719c72d3")
    else { return }

    URLSession.shared.dataTask(with: url){(data , response, error) in
        do{
            guard let data = data else { return }
            print("hi2")
            if let decodedData = try? JSONDecoder().decode([Gameee].self, from: data) {
                DispatchQueue.main.async {
                    for i in decodedData{
                    let gam = Gameee(MD: i.MD, MS: i.MS, MT: i.MT, HG: i.HG, AG: i.AG, HN: i.HN, AN: i.AN)
//                    calenderCalender.init(game: gam)
//                        game.append(gam)
                    }
                }
            }
        }
        catch{
            print("error")
        }
    }.resume()

}

struct GGGG {
    var hussain = [Gameee].self

    enum CodingKeys: String, CodingKey{

       case husaain = ""
    }
}
