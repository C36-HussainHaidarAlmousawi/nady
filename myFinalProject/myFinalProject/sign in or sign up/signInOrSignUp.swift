//
//  signInOrSignUp.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/14/20.
//

import SwiftUI

struct signInOrSignUp: View {
    
    var body: some View {
        NavigationView{
            VStack{
                FBG()
                
                HStack{
                    VStack{
                    ZStack{
                        Image("SignUp")
                        NavigationLink(destination: SignIn()){
                            Text("تسجيل الدخول").font(.title).bold().accentColor(.white)
                        }
                        
                    }.padding(.bottom , 20)
                        ZStack{
                            Image("SignIn")
                            NavigationLink(destination: SignUp()) {
                                Text("انشئ حساب").font(.title).bold().accentColor(.white)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct signInOrSignUp_Previews: PreviewProvider {
    static var previews: some View {
        signInOrSignUp()
    }
}

struct FBG: View {
    var body: some View {
        ZStack{
            Image("FBG")
                .resizable()
                .scaledToFill()
                .frame(width: 410 , height: 650).position(x: 200, y: 325)
            
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 80 , height: 120).position(x: 200, y: 325)
        }.edgesIgnoringSafeArea(.all)
    }
}
