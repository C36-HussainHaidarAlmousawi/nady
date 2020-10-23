//
//  calenderCalender.swift
//  myFinalProject
//
//  Created by Hussain Haidar Almousawi on 10/15/20.
//
import SwiftUI



var text: Text!
struct calenderCalender: View {
    
    @State var games: [Gameee] = []
    var gamess = ["1","2"]
    
    var body: some View {
        NavigationView{
            
            VStack{
                

                Form{
                    
                    ForEach(games) {item in
                        HStack{
                        Image(uiImage: UIImage(named: item.HN)!)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            Text(item.HG).bold()
                            Spacer()
                            VStack{
                                Text("")
                                Text(item.MS).font(.title)
                                Text(item.MD)
                                Text(item.MT)
                                Text("")
                            }
                            Spacer()
                            Text(item.AG).bold()
                            Image(uiImage: UIImage(named: item.AN)!)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 70)
                        }
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
            }.onAppear{
               
                loadData()
            }
        }
        .navigationBarHidden(true)
    }
    
    func loadData(){
        
        
        var arrayGame : [Gameee] = []
        
        guard let url = URL(string:"https://apiv2.apifootball.com/?action=get_predictions&from=0000-00-00&to=3020-10-20&league_id=293&APIkey=1a9873166ea217449dfb6aa95a3e235b3cd83cc16507c046fc4cd3ff719c72d3")
        else { return }
        
        URLSession.shared.dataTask(with: url){(data , response, error) in
            do{
                guard let data = data else { return }
                
                if let decodedData = try? JSONDecoder().decode([Gameee].self, from: data) {
                    print("as")
                    DispatchQueue.main.async {
                        
                        for i in decodedData{
                        arrayGame.append(Gameee(MD: i.MD, MS: i.MS, MT: i.MT, HG: i.HG, AG: i.AG, HN: i.HN, AN: i.AN))
                        games = arrayGame
                            
                        }
                    }
                }
            }
        }.resume()
    }
}





struct calenderCalender_Previews: PreviewProvider {
    static var previews: some View {
        calenderCalender()
    }
}
