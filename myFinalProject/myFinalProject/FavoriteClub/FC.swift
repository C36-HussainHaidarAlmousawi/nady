//
//  FC.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/16/20.
//

import SwiftUI

struct FC: View {
    @State var showingAlert = false
    @State var showingAlerto = false
    @State var showingAlertt = false
    @State var showingAlertth = false
    @State var showingAlertf = false
    @State var showingAlertfi = false


    var body: some View {
        VStack{
            
            HStack{
                
                
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
                ZStack{
                    Image("website")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                        .padding()
                    
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        Text("hiiiiiiiiiiiiiiiiiiiii\n\n\n")
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Im sorry"), message: Text("you can visit the website by typing al arabi FC in google"), dismissButton: .default(Text("Got it!")))
                    }
                    .accentColor(.clear)
                }
                ZStack{
                    Image("phone")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                        .padding()
                    Button(action: {
                        self.showingAlerto = true
                    }) {
                        Text("hiiiiiiiiiiiiiiiiiiiii\n\n\n")
                    }
                    .alert(isPresented: $showingAlerto) {
                        Alert(title: Text("Im sorry"), message: Text("i dont know the number of alarabi FC"), dismissButton: .default(Text("Got it!")))
                    }
                    .accentColor(.clear)
                }
                ZStack{
                    Image("email")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                        .padding()
                    Button(action: {
                        self.showingAlertt = true
                    }) {
                        Text("hiiiiiiiiiiiiiiiiiiiii\n\n\n")
                    }
                    .alert(isPresented: $showingAlertt) {
                        Alert(title: Text("Im sorry"), message: Text("i dont know alarabi's FC email"), dismissButton: .default(Text("Got it!")))
                    }
                    .accentColor(.clear)
                }
            }
            HStack{
                ZStack{
                    Image("instagram")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                        .padding()
                    Button(action: {
                        self.showingAlertth = true
                    }) {
                        Text("hiiiiiiiiiiiiiiiiiiiii\n\n\n")
                    }
                    .alert(isPresented: $showingAlertth) {
                        Alert(title: Text("Im sorry"), message: Text("you can visit the instagram acount of alarabi's FC by typing https://www.instagram.com/arabi_sc/?hl=en in google"), dismissButton: .default(Text("Got it!")))
                    }.accentColor(.clear)
                   
                }
                ZStack{
                    Image("twitter")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                        .padding()
                    Button(action: {
                        self.showingAlertf = true
                    }) {
                        Text("hiiiiiiiiiiiiiiiiiiiii\n\n\n")
                    }
                    .alert(isPresented: $showingAlertf) {
                        Alert(title: Text("Im sorry"), message: Text("you can visit the twitter acount of alarabi's FC by typing https://twitter.com/Alarabi_SC in google"), dismissButton: .default(Text("Got it!")))
                    }
                    .accentColor(.clear)
                }
                ZStack{
                    Image("facebook copy")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .shadow(color: Color("Color"), radius: 10, x: 0.0, y: 0.0)
                        .padding()
                    Button(action: {
                        self.showingAlertfi = true
                    }) {
                        Text("hiiiiiiiiiiiiiiiiiiiii\n\n\n").accentColor(.clear)
                    }
                    .alert(isPresented: $showingAlertfi) {
                        Alert(title: Text("Im sorry"), message: Text("you can visit the facebook acount of alarabi's FC by typing https://www.facebook.com/alarabiclub/ in google"), dismissButton: .default(Text("Got it!")))
                    }
                }
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
