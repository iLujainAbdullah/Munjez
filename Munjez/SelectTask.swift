//
//  SelectTask.swift
//  Munjez
//
//  Created by Ahlamalmutiri on 27/03/1445 AH.
//

import Foundation
import Foundation
import SwiftUI

struct SelectTask: View{
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    @State private var isSelected5 = false
    @State private var isSelected6 = false
    var body: some View {
        
       
            
            ZStack{
                Color(.munjezBack) .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    VStack{
                        
                        HStack{
                            Text("ساعدنا بالتعرف عليك")
                                .font(.largeTitle)
                            Text("أهلاً ياصديقنا !")
                                .foregroundColor(Color(.munjezYellow))
                                .font(.largeTitle)
                            
                        } .padding()
                        
                        HStack{
                            
                            
                            SelectButton3(
                                isSelected: $isSelected1,
                                image2: Image("eat") ,
                                text: "تناول الطعام "
                                , color: .accentColor)
                            .onTapGesture {
                                isSelected1.toggle()
                            }
                            .padding()
                            
                            SelectButton3(
                                isSelected: $isSelected2,
                                image2: Image("teeth") ,
                                text: "تفريش الاسنان "
                                , color: .accentColor)
                            .onTapGesture {
                                isSelected2.toggle()
                            }
                            .padding()
                            SelectButton3(
                                isSelected: $isSelected3,
                                image2: Image("sun") ,
                                text: "الاستيقاظ مبكرا "
                                , color: .accentColor)
                            .onTapGesture {
                                isSelected3.toggle()
                            }.padding()
                            
                        }
                        
                        
                        
                        
                        
                       
                        
                        
                        HStack{
                            
                            
                            SelectButton3(
                                isSelected: $isSelected4,
                                image2: Image("sleep") ,
                                text: "وقت النوم"
                                , color: .accentColor)
                            .onTapGesture {
                                isSelected4.toggle()
                            }
                            .padding()
                            
                            SelectButton3(
                                isSelected: $isSelected5,
                                image2: Image("play") ,
                                text: "وقت اللعب"
                                , color: .accentColor)
                            .onTapGesture {
                                isSelected5.toggle()
                                
                                
                            }.padding()
                            SelectButton3(
                                isSelected: $isSelected6,
                                image2: Image("homework") ,
                                text: "حل الواجبات"
                                , color: .accentColor)
                            .onTapGesture {
                                isSelected6.toggle()
                                
                                
                            }.padding()
                            
                            
                            
                            
                        }
                        
                    }
                    
               
                }
            
            
        }
        
        
    }
}
        
        
        
    

   
#Preview {
    
    SelectTask()
}
