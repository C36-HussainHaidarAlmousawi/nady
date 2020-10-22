////
////  calenderRanking.swift
////  myFinalProject
////
////  Created by Hussain Haidar Almousawi on 10/16/20.
////
//
//import SwiftUI
//
//struct calenderRanking: View {
//    var body: some View {
//        VStack{
//            HStack{
//                NavigationLink(destination: calenderCalender()){
//                    Text("التقويم")
//                }
//                    NavigationLink(destination: calenderRanking()){
//                        Text("التصنيف").accentColor(Color("Shadow2"))
//                    }
//
//            }
//            
//            ScrollView(.horizontal, showsIndicators: false){
//                HStack{
//                    NavigationLink(destination: calenderRanking()){
//                        Text("الاهداف").accentColor(Color("Shadow2"))
//                    }
//                        NavigationLink(destination: Shots()){
//                            Text("التسديد")
//                        }
//                    NavigationLink(destination: passes()){
//                        Text("التمريرات")
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
//                    
//                }
//            }
//            Form{
//                
//                Score(S: scorrers[0])
//                Score(S: scorrers[1])
//                Score(S: scorrers[2])
//                Score(S: scorrers[3])
//                
//            }
//            VStack{
//                ZStack{
//                Image(uiImage: #imageLiteral(resourceName: "SignUpp"))
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: 55)
//                    .clipShape(Circle())
//                Image(uiImage: #imageLiteral(resourceName: "Alarabi"))
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: 50)
//                    .clipShape(Circle())
//                }
//                NavigationLink(destination: FC()){
//                    Text("العربي")
//                }
//            }
//            HStack{
//                VStack{
//                    Image(uiImage: #imageLiteral(resourceName: "calendar"))
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 50)
//                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
//                    NavigationLink(destination: calenderCalender()){
//                        Text("التقويم").accentColor(Color("Shadow2"))
//                    }
//                }.padding(.trailing)
//                VStack{
//                    Image(uiImage: #imageLiteral(resourceName: "rank"))
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 50)
//                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
//                    NavigationLink(destination: Standings()){
//                        Text("الترتيب")
//                    }
//                }.padding(.trailing , 20)
//                
//                VStack{
//                    Image(uiImage: #imageLiteral(resourceName: "shop"))
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 50)
//                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
//                    NavigationLink(destination: calenderCalender()){
//                        Text("المتجر")
//                    }
//                }.padding(.leading , 20)
//                VStack{
//                    Image(uiImage: #imageLiteral(resourceName: "more"))
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 50)
//                        .shadow(color: Color("Color"), radius: 6, x: 0.0, y: 0.0)
//                    NavigationLink(destination: More()){
//                        Text("المزيد")
//                    }
//                }.padding(.leading)
//            
//            }
//        }
//    }
//}
//
//struct calenderRanking_Previews: PreviewProvider {
//    static var previews: some View {
//        calenderRanking()
//    }
//}
//
//
//struct Score: View {
//    var S: Player
//    var body: some View {
//        HStack{
//        HStack{
//            Text("\(S.rating)")
//        }
//        VStack{
//            Text(S.name)
//            Image(uiImage: UIImage(named: S.clubImg)!)
//                .resizable()
//                .scaledToFit()
//                .frame(height: 80)
//        }
//            Spacer()
//        Image(uiImage: UIImage(named: S.img)!)
//            .resizable()
//            .scaledToFit()
//            .frame(height: 100)
//            
//            Text("\(S.scores)").bold()
//        
//        }
//            }
//        }
//    
//
