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
                    Stand(T: teams[0])
                    Stand(T: teams[1])
                    Stand(T: teams[2])
                    Stand(T: teams[3])
                }
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

struct Standings_Previews: PreviewProvider {
    static var previews: some View {
        Standings()
    }
}


struct Stand: View {
    var T: Team!
    var body: some View {
        HStack{
            Text("\(T.Stand).")
            Image(uiImage: UIImage(named: T.TImg)!)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            
            Text(T.TName)
            Spacer()
            HStack{
                Text("\(T.Points)")
                Spacer()
                Text("\(T.GP)")
                Spacer()
                Text("\(T.W)")
                Spacer()
                Text("\(T.D)")
                Spacer()
                Text("\(T.L)")
                
            }
        }
    }
}
