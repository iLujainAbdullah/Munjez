//
//  tasksList.swift
//  Munjez
//
//  Created by Lujain Abdullah Halabi Almeri on 29/03/1445 AH.
//

import SwiftUI

struct tasksList: View {
    @AppStorage("nameChild") var nameChild : String = ""
    @State var isSelected = Array(repeating: false, count: 6)
    
    let images: [String] = ["sun","tooth", "meal", "book",  "play", "sleep"]
    let descriptions: [String] =  ["الاستيقاظ مبكرًا", "تفريش الأسنان", "تناول الوجبات", "حل الواجبات", "وقت اللعب", "النوم مبكرًا"]
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.munjezBack) .edgesIgnoringSafeArea(.all)
                HStack{
                    Text("فلننجز مهامك")
                        .font(.largeTitle)
                    Text("أهلًا \( nameChild)!")
                        .foregroundColor(Color(.munjezYellow))
                        .font(.largeTitle)
                } .padding(.vertical, -350)
                
                HStack{
                    ForEach(Array(0..<images.count), id: \.self) { index in
                        if index<3{
                            SelectButton3(
                                isSelected: $isSelected[index],
                                image2: Image(images[index]),
                                text: descriptions[index], color: .accentColor)
                            .onTapGesture {
                                isSelected[index].toggle()
                                print(isSelected[index])
                            }
                            .padding(.vertical, 40)
                            .padding(.horizontal, 10)
                        }else {
                            SelectButton3(
                                isSelected: $isSelected[index],
                                image2: Image(images[index]),
                                text: descriptions[index], color: .accentColor)
                            .onTapGesture {
                                isSelected[index].toggle()
                                print(isSelected[index])
                            }
                            .padding(.vertical, 40)
                            .padding(.horizontal, 10)
                        }
                    }
                }
                .padding(.vertical, -300)
                NavigationLink("هيا بنا!", destination: SelectTask(isSelected: $isSelected))
                    .font(.largeTitle)
                    .frame(width: 300 , height: 100)
                    .foregroundColor(Color.white)
                    .background(Color(.munjezYellow))
                    .cornerRadius(42)
            }
        }
    }
}

struct tasksList_Previews: PreviewProvider {
    static var previews: some View {
        tasksList()
    }
}
