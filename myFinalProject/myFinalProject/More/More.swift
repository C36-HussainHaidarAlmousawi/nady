//
//  More.swift
//  myFinalProject
//
//  Created by hussain haidar almousawi on 10/17/20.
//

import SwiftUI

struct More: View {
    var body: some View {
        NavigationView{
        VStack{
            Form{
                Button(action: {}, label: {Text("الاشعارات")})
                Button(action: {}, label: {Text("النادي المفضل")})
                Button(action: {}, label: {Text("الحساب")})
                

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
    }
struct More_Previews: PreviewProvider {
    static var previews: some View {
        More()
    }
}
