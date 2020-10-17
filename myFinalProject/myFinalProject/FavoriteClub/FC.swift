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
            Image("Alarabi")
            Text("العربي").font(.title).bold()
            }
            
            VStack{
            Text("العنوان: \nالمنصورية ، دولة الكويت").font(.title).bold()
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

struct FC_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FC()
                .preferredColorScheme(.dark)
            FC()
                
        }
    }
}
