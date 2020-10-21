//
//  calenderCalender.swift
//  myFinalProject
//
//  Created by Hussain Haidar Almousawi on 10/15/20.
//
import SwiftUI

struct calenderCalender: View {
    
    @State var game: [Gameee]
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: calenderCalender()){
                        Text("التقويم")
                    }
                    
                    NavigationLink(destination: calenderRanking()){
                        Text("التصنيف")
                    }
                }
                Button("refresh") {loadData()}
                Form{
                    Text(game[0].HG ?? "meow")
                }
                
                NavigationLink(destination: FC()){
                    Text("العربي")
                }
                HStack{
                    NavigationLink(destination: calenderCalender()){
                        Text("التقويم")
                    }
                    
                    NavigationLink(destination: Standings()){
                        Text("الترتيب")
                    }
                    
//                    NavigationLink(destination: Shop()){
//                        Text("المتجر")
//                    }
                    
                    NavigationLink(destination: More()){
                        Text("المزيد")
                    }
                }
            }
        }.onAppear {
            loadData()
        }
    }
}
struct calenderCalender_Previews: PreviewProvider {
    static var previews: some View {
        
        calenderCalender()
        
    }
}
//struct gme: View {
//    var G: Game
//    var body: some View {
//        HStack(alignment: .center){
//            HStack{
//                Image(uiImage: UIImage(named: G.T1img)!)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: 80)
//
//                VStack(alignment: .leading){
//                    Text("\(G.T1Goals)")
//                        .font(.largeTitle)
//                }
//            }
//            Spacer()
//            VStack(alignment: .center){
//                Text(G.live)
//                Text(G.time)
//            }
//            Spacer()
//            HStack{
//                VStack(alignment: .trailing){
//                    Text("\(G.T2Goals)")
//                        .font(.largeTitle)
//                }
//
//
//                Image(uiImage: UIImage(named: G.T2img)!)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: 80)
//            }
//        }.padding(.vertical)
//    }
//}
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
                    calenderCalender.init(game: gam)
                        game.append(gam)
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
