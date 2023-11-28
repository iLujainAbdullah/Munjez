//
//  SelectTask.swift
//  Munjez
//
//  Created by Lujain Abdullah Halabi Almeri on 27/03/1445 AH.
//
import SwiftUI

struct SelectTask: View {
    @AppStorage("nameChild") var nameChild: String = ""
    @AppStorage("days") var days: Int = 0
    
    @Binding var isSelected: [Bool]
    let images: [String] = ["meal", "tooth", "sun", "sleep", "play", "book"]
    let descriptions: [String] = ["تناول الوجبات", "تفريش الأسنان", "الاستيقاظ مبكرا", "النوم مبكرا", "وقت اللعب", "حل الواجبات"]
    
    @State private var isDone = false;
    
    var body: some View {
        ZStack {
            Color(.munjezBack).edgesIgnoringSafeArea(.all)
            VStack { // Use a VStack for vertical stacking
                HStack{
                    Text("أنجز مهامك ثم انقر عليها")
                        .font(.largeTitle)
                        .foregroundColor(Color(.munjezBlue))
                    Text("أهلًا \(nameChild)!")
                        .foregroundColor(Color(.munjezYellow))
                        .font(.largeTitle)
                }
                
                // Iterate through sets of three cards
                ForEach(0..<(images.count / 3), id: \.self) { row in
                    HStack {
                        ForEach(0..<3, id: \.self) { col in
                            let index = row * 3 + col
                            if isSelected[index] {
                                SelectButton3(
                                    isSelected: $isSelected[index],
                                    image2: Image(images[index]),
                                    text: descriptions[index],
                                    color: .accentColor
                                )
                                .onTapGesture {
                                    isSelected[index].toggle()
                                    if (!isSelected.contains(true)){
                                        isDone = true
                                        days += 1 
                                    }
                                }
                                .padding(.horizontal, 10)
                            }
                        }
                    }
                }
            } .fullScreenCover(isPresented: $isDone, content:{
                weeklyMap()
            })
        }
    }
}
