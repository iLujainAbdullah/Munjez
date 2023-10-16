//
//  SelectTask.swift
//  Munjez
//
//  Created by Ahlamalmutiri on 27/03/1445 AH.
//

import Foundation
import Foundation
import SwiftUI

struct SelectTask: View {
    @AppStorage("nameChild") var nameChild : String = ""
    @Binding var isSelected: [Bool]
    let images: [String] = ["sun","tooth", "meal", "book",  "play", "sleep"]
    let descriptions: [String] =  ["الاستيقاظ مبكرًا", "تفريش الأسنان", "تناول الوجبات", "حل الواجبات", "وقت اللعب", "النوم مبكرًا"]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.munjezBack) .edgesIgnoringSafeArea(.all)
                HStack{
                    Text("ساعدنا بالتعرف عليك")
                        .font(.largeTitle)
                    Text("اهلا \( nameChild) !")
                        .foregroundColor(Color(.munjezYellow))
                        .font(.largeTitle)
                } .padding(.vertical, -350)
                
                HStack{
                    ForEach(Array(0..<images.count), id: \.self) { index in
                        if (isSelected[index].description) == "true"{
                            SelectButton3(
                                isSelected: $isSelected[index],
                                image2: Image(images[index]),
                                text: descriptions[index], color: .accentColor).background(.white)
                            .onTapGesture {
                                isSelected[index].toggle()
                                print(isSelected[index])
                            }
                            .padding(.vertical, 40)
                            .padding(.horizontal, 10)
                        }
                    }
                }
               // .padding(.vertical, -300)
            }
        }
    }
}
