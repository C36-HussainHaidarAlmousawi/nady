//
//  SignUp.swift
//  myFinalProject
//
//  Created by Hussain Haidar Almousawi on 10/15/20.
//

import SwiftUI

struct SignUp: View {
    @State var email = ""
    @State var phone = ""
    @State var FC = ""
    @State var password = ""
    @State var CPassword = ""
    
    var body: some View {
        VStack{
            Logo()
            Text("مرحبا بكم").font(.title).bold()
            VStack{
                Spacer()
                
                TextField("البريد الالكتروني", text: $email)
                    .padding(.bottom , 50)
                    .multilineTextAlignment(TextAlignment.trailing)
                    .padding(.trailing)
                TextField("رقم الهاتف", text: $phone)
                    .padding(.bottom , 50)
                    .multilineTextAlignment(TextAlignment.trailing)
                    .padding(.trailing)
                TextField("النادي المفضل", text: $FC)
                    .padding(.bottom , 50)
                    .multilineTextAlignment(TextAlignment.trailing)
                    .padding(.trailing)
                SecureField("كلمة السر", text: $password)
                    .padding(.bottom , 50)
                    .multilineTextAlignment(TextAlignment.trailing)
                    .padding(.trailing)
                
                SecureField("تاكيد كلمة السر", text: $CPassword)
                    .padding(.bottom , 40)
                    .multilineTextAlignment(TextAlignment.trailing)
                    .padding(.trailing)
                HStack{
                    Text("انشئ حساب").bold()
                    ZStack{
                        Image("SignUpp")
                        NavigationLink(destination: calenderCalender()){
                            Text("hiiiiii\n").accentColor(.clear)
                        }
                    }.shadow(color: Color("Shadow"), radius: 10, x: 0, y: 0)
                }.padding(.leading , 260)
                Image("SignUpWith")
                
                NavigationLink(destination: SignIn()){
                    Text("لديك حساب مسبقاً؟ اضغط هنا")
                }
                
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
