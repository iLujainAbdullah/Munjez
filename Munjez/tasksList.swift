//
//  tasksList.swift
//  Munjez
//
//  Created by Lujain Abdullah Halabi Almeri on 29/03/1445 AH.
//
import SwiftUI

struct tasksList: View {
    @AppStorage("nameChild") var nameChild: String = ""
    @State var isSelected = Array(repeating: false, count: 6)
    
    let images: [String] = ["meal", "tooth", "sun", "sleep", "play", "book"]
    let descriptions: [String] = ["تناول الوجبات", "تفريش الأسنان", "الاستيقاظ مبكرا", "النوم مبكرا", "وقت اللعب", "حل الواجبات"]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.munjezBack).edgesIgnoringSafeArea(.all)
                VStack { // Use a VStack for vertical stacking
                    HStack{
                        Text("اختر مهامك اليوم")
                            .font(.largeTitle).foregroundStyle(Color(.munjezBlue))
                        Text("أهلًا \(nameChild)!")
                            .foregroundColor(Color(.munjezYellow))
                            .font(.largeTitle)
                    }
                    // Use a ForEach loop to group cards in sets of 3
                    ForEach(0..<(images.count / 3), id: \.self) { row in
                        HStack {
                            ForEach(0..<3, id: \.self) { col in
                                let index = row * 3 + col
                                SelectButton3(
                                    isSelected: $isSelected[index],
                                    image2: Image(images[index]),
                                    text: descriptions[index],
                                    color: .accentColor
                                )
                                .onTapGesture {
                                    isSelected[index].toggle()
                                }
                                .padding(.horizontal, 10)
                            }
                        }
                    }
                    NavigationLink(destination: SelectTask(isSelected: $isSelected)){
                        Text("هيا بنا!")
                            .font(.largeTitle)
                            .frame(width: 300, height: 100)
                            .foregroundColor(Color.white)
                            .background(Color(.munjezYellow))
                            .cornerRadius(42)
                            .padding(.vertical, 13)
                    }.disabled(!isSelected[0] && !isSelected[1] && !isSelected[2] && !isSelected[3] && !isSelected[4] && !isSelected[5])
                }
            }
        }
    }
}

struct tasksList_Previews: PreviewProvider {
    static var previews: some View {
        tasksList()
    }
}
