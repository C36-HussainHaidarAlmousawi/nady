//
//  calenderCalender.swift
//  myFinalProject
//
//  Created by Hussain Haidar Almousawi on 10/15/20.
//

import SwiftUI

struct calenderCalender: View {

    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination: calenderCalender()){
                    Text("التقويم")
                }
                
                    NavigationLink(destination: calenderRanking()){
                        Text("التصنيف")
                    }
            }
            
        Form{
            gme(G: games[3])
            gme(G: games[1])
            gme(G: games[0])
            gme(G: games[2])
            Text("غدا").multilineTextAlignment(TextAlignment.center)
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
                
                NavigationLink(destination: calenderCalender()){
                    Text("المتجر")
                }
                
                NavigationLink(destination: More()){
                    Text("المزيد")
                }
                
            }

        
        
    }
}
}

struct calenderCalender_Previews: PreviewProvider {
    static var previews: some View {
        
        calenderCalender()

    }
}

struct gme: View {
    var G: Game
    var body: some View {
        HStack(alignment: .center){
            HStack{
                Image(uiImage: UIImage(named: G.T1img)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                
                VStack(alignment: .leading){
                    Text("\(G.T1Goals)")
                        .font(.largeTitle)
                }
            }
            Spacer()
            VStack(alignment: .center){
                Text(G.live)
                Text(G.time)
            }
            Spacer()
            HStack{
                VStack(alignment: .trailing){
                    Text("\(G.T2Goals)")
                        .font(.largeTitle)
                }
                
                
                Image(uiImage: UIImage(named: G.T2img)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
            }
        }.padding(.vertical)
    }
}
