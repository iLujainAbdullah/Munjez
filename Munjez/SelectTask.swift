//
//  SelectTask.swift
//  Munjez
//
//  Created by Ahlamalmutiri on 27/03/1445 AH.
//
import SwiftUI

struct SelectTask: View {
    @AppStorage("nameChild") var nameChild: String = ""
    @Binding var isSelected: [Bool]
    let images: [String] = ["sun", "tooth", "meal", "book", "play", "sleep"]
    let descriptions: [String] = ["الاستيقاظ مبكرًا", "تفريش الأسنان", "تناول الوجبات", "حل الواجبات", "وقت اللعب", "النوم مبكرًا"]
    
    var body: some View {
        NavigationStack {
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
                                        isSelected[index] = false
                                        print(isSelected[index])
                                        print(isSelected.contains(true) ,"dddddddd")
                                    }
                                    .padding(.horizontal, 10)
                                }
                            }
                        }
                    }
                   
                        
                }
            }
        }
    }
}
