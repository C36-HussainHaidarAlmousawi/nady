//
//  FC.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/16/20.
//

import SwiftUI

struct FC: View {
    var body: some View {
        VStack{
            
            HStack{
                //                Button(action: {}, label: {Text("النادي")})
                //
                //                Button(action: {}, label: {Text("الاحصائيات")})
                
            }.padding(.top , 40)
            Spacer()
            VStack{
                Image(uiImage: #imageLiteral(resourceName: "Al Arabi"))
                Text("العربي").font(.title).bold()
            }
            
            VStack{
                Text("العنوان:").font(.title).bold()
                Text("المنصورية ، دولة الكويت").font(.title).bold()
            }
            Spacer()
            HStack{
                Image("website")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                    .padding()
                Image("phone")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                    .padding()
                Image("email")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                    .padding()
            }
            HStack{
                Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                    .padding()
                Image("twitter")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                    .padding()
                
                Image("facebook copy")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                    .padding()
            }
            
            Spacer()

            HStack{

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
                        Text("العربي").accentColor(Color("Shadow2"))
                    }
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
                    }.navigationBarHidden(true)
                }.padding(.leading)
                
            }
        }
    }
}
struct FC_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FC()
                .preferredColorScheme(.dark)
            FC()
            
        }
    }
}
