//
//  assistes.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/16/20.
//

import SwiftUI

struct assistes: View {
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
                
                Shot(Sh: shoters[0])
                Shot(Sh: shoters[1])
                Shot(Sh: shoters[2])
                Shot(Sh: shoters[3])
                
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

struct assistes_Previews: PreviewProvider {
    static var previews: some View {
        assistes()
    }
}
