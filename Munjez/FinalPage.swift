//
//  FinalPage.swift
//  Munjez
//
//  Created by Lujain Abdullah Halabi Almeri on 25/03/1445 AH.
//

import Foundation
import SwiftUI

struct FinalPage: View {
    @State private var isRotating = 0.0
    @State private var scale = 1.0
    var body: some View {
        ZStack {
            Color(.munjezBack).edgesIgnoringSafeArea(.all)
            VStack{
                Text("مبارك يا أحمد ").font(.largeTitle).bold().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center).foregroundColor(.munjezYellow)
                    .padding(.vertical, -320)
                Text("لقد كان أسبوعًا حافلًا بالإنجاز!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center).foregroundColor(.munjezBlue)
                    .padding(.vertical, -280)
            }
             Spacer()
             Spacer()
           
            Image("fires")
                .resizable()
                .frame(width: 400, height: 500)
                .scaledToFit()
                .scaleEffect(scale)
                .onAppear() {
                    scale += 0.5
                                }
                .animation(.spring(response: 0.7, dampingFraction: 0.1), value: scale)
            
            Image("celeberation").resizable().frame(width: 700, height: 700)
                            }
        }
    }


#Preview {
    FinalPage()
}
