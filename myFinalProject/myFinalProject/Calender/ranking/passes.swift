////
////  passes.swift
////  myFinalProject
////
////  Created by hussain haidar almousawi on 10/16/20.
////
//
//import SwiftUI
//
//struct passes: View {
//    var body: some View {
//        VStack{
//            HStack{
//                NavigationLink(destination: calenderCalender()){
//                    Text("التقويم")
//                }
//                
//                    NavigationLink(destination: calenderRanking()){
//                        Text("التصنيف").accentColor(Color("Shadow2"))
//                    }
//
//            }
//            
//            ScrollView(.horizontal, showsIndicators: false){
//                HStack{
//                    NavigationLink(destination: calenderRanking()){
//                        Text("الاهداف")
//                    }
//                        NavigationLink(destination: Shots()){
//                            Text("التسديد")
//                        }
//                    NavigationLink(destination: passes()){
//                        Text("التمريرات").accentColor(Color("Shadow2"))
//                    }
//                        NavigationLink(destination: assistes()){
//                            Text("المساعدات")
//                        }
//                    NavigationLink(destination: calenderCalender()){
//                        Text("التصديات")
//                    }
////                        NavigationLink(destination: redCard()){
////                            Text("البطائق الحمراء")
////                        }
////                    NavigationLink(destination: yellowCard()){
////                        Text("البطائق الصفراء")
////                    }
////                        NavigationLink(destination: mistake()){
////                            Text("الاخطاء")
////                        }
//                }
//            }
//            Form{
//                
//                Pases(P: passers[0])
//                Pases(P: passers[1])
//                Pases(P: passers[2])
//                Pases(P: passers[3])
//                
//            }
//            NavigationLink(destination: FC()){
//                Text("العربي")
//            }
//            HStack{
//                NavigationLink(destination: calenderCalender()){
//                    Text("التقويم")
//                }
//                
//                NavigationLink(destination: Standings()){
//                    Text("الترتيب")
//                }
//                
//                NavigationLink(destination: calenderCalender()){
//                    Text("المتجر")
//                }
//                
//                NavigationLink(destination: More()){
//                    Text("المزيد")
//                }
//                
//            }
//
//            
//            
//        }
//    }
//}
//
//struct passes_Previews: PreviewProvider {
//    static var previews: some View {
//        passes()
//    }
//}
//
//struct Pases: View {
//    var P: Player
//    var body: some View {
//        HStack{
//        HStack{
//            Text("\(P.rating)")
//        }
//        VStack{
//            Text(P.name)
//            Image(uiImage: UIImage(named: P.clubImg)!)
//                .resizable()
//                .scaledToFit()
//                .frame(height: 80)
//        }
//            Spacer()
//        Image(uiImage: UIImage(named: P.img)!)
//            .resizable()
//            .scaledToFit()
//            .frame(height: 100)
//            
//            Text("\(P.scores)").bold()
//        
//        }
//            }
//        }
