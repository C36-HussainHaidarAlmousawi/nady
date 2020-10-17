//
//  calenderRanking.swift
//  myFinalProject
//
//  Created by Hussain Haidar Almousawi on 10/16/20.
//

import SwiftUI

struct calenderRanking: View {
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
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    NavigationLink(destination: calenderCalender()){
                        Text("الاهداف")
                    }
                        NavigationLink(destination: Shots()){
                            Text("التسديد")
                        }
                    NavigationLink(destination: passes()){
                        Text("التمريرات")
                    }
                        NavigationLink(destination: assistes()){
                            Text("المساعدات")
                        }
                    NavigationLink(destination: calenderCalender()){
                        Text("التصديات")
                    }
//                        NavigationLink(destination: redCard()){
//                            Text("البطائق الحمراء")
//                        }
//                    NavigationLink(destination: yellowCard()){
//                        Text("البطائق الصفراء")
//                    }
//                        NavigationLink(destination: mistake()){
//                            Text("الاخطاء")
//                        }
                    
                }
            }
            Form{
                
                Score(S: scorrers[0])
                Score(S: scorrers[1])
                Score(S: scorrers[2])
                Score(S: scorrers[3])
                
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

struct calenderRanking_Previews: PreviewProvider {
    static var previews: some View {
        calenderRanking()
    }
}


struct Score: View {
    var S: Player
    var body: some View {
        HStack{
        HStack{
            Text("\(S.rating)")
        }
        VStack{
            Text(S.name)
            Image(uiImage: UIImage(named: S.clubImg)!)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
        }
            Spacer()
        Image(uiImage: UIImage(named: S.img)!)
            .resizable()
            .scaledToFit()
            .frame(height: 100)
            
            Text("\(S.scores)").bold()
        
        }
            }
        }
    

