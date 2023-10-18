//
//  EndDay.swift
//  Munjez
//
//  Created by Lujain Abdullah Halabi Almeri on 02/04/1445 AH.
//
import SwiftUI
import Foundation

struct EndDay: View {
    
    @AppStorage("nameChild") var nameChild : String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.munjezBack) .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Text("أحسنت \(nameChild) لقد اكملت مهام اليوم  👏🏼")
                    
                        .font(.system(size: 50))
                        .foregroundColor(Color(.munjezBlue))
                    
                    
                    
                    NavigationLink(destination: tasksList()){
                        Text("ابدا اليوم التالي ")
                            .font(.largeTitle)
                            .frame(width: 300, height: 100)
                            .foregroundColor(Color.white)
                            .background(Color(.munjezYellow))
                            .cornerRadius(42)
                            .padding(.vertical, 13)
                    }
                }
            }
        }
    }
}
#Preview {
    EndDay()
    
}
