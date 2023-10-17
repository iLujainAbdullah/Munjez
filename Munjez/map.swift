//
//  map.swift
//  Munjez
//
//  Created by Reem Alhalafi on 02/04/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var daysCounter = 1
    var body: some View {
        
        ZStack{
            Color(.munjezBack)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("map2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1300, height: 1300)
                
                switch daysCounter{
                case 1:
                    mImage(img: Image("cat")).offset(x: -2, y: -1)
                case 2:
                    mImage(img: Image("cat")).offset(x: 500, y: -12)
                case 3:
                    mImage(img: Image("cat")).offset(x: 276, y: -150)
                case 4:
                    mImage(img: Image("cat")).offset(x: -1, y: -292)
                case 5:
                    mImage(img: Image("cat")).offset(x: 507, y: -293)
                case 6:
                    mImage(img: Image("cat")).offset(x: 276, y: -440)
                case 7:
                    mImage(img: Image("cat")) .offset(x: 565, y: -582)
                default:
                    mImage(img: Image("")).offset(x: 580, y: -150)
                }
                
            }
            .padding()
        }
        
        
    }
}
#Preview {
    ContentView()
}
