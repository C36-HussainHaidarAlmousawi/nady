//
//  SignIn.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/14/20.
//

import SwiftUI

struct SignIn: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack{
            Logo()
            Text("مرحبا بكم مجدداً!").font(.title).bold()
            Spacer()
            
            TextField("البريد الالكتروني", text: $email)
                .padding(.bottom)
                .multilineTextAlignment(TextAlignment.trailing)
                .padding(.trailing)

            TextField("كلمة السر", text: $password)
                .padding(.top)
                .multilineTextAlignment(TextAlignment.trailing)
                .padding(.trailing)
            Spacer()
            HStack{
                Text("تسجيل دخول").bold()
        ZStack{
            Image("SignInn")
        NavigationLink(destination: calenderCalender()){
            Text("hiiiiii\n").accentColor(.clear)
        }
        }
            }.padding(.leading , 250)
        Image("SignInWith")
        
        NavigationLink(destination: SignIn()){
            Text("ليس لديك حساب؟ اضغط هنا")
        }
        }
    }
}



struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}

struct Logo: View {
    var body: some View {
        ZStack{
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 80 , height: 120).offset(x: 0 , y: -20)
        }
    }
}
