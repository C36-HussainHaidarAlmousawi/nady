//
//  More.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/17/20.
//

import SwiftUI

struct More: View {
    var body: some View {
        
            VStack{
                Form{
                    Button(action: {}, label: {Text("البريد الالكتروني")})
                    Button(action: {}, label: {Text("كلمة السر")})
                    Button(action: {}, label: {Text("النادي المفضل")})
                    Button(action: {}, label: {Text("رقم الهاتف")})
   
                }
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
                            Text("الحساب").accentColor(Color("Shadow2"))
                        }
                    }.padding(.leading)
                }
            }
        }
    }


struct More_Previews: PreviewProvider {
    static var previews: some View {
        More()
    }
}
