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
    @AppStorage("nameChild") var nameChild : String = ""
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
                            Text("فلنختر مهامك ")
                                .font(.largeTitle)
                            Text(" اهلا ! \( nameChild)")
                                .foregroundColor(Color(.munjezYellow))
                                .font(.largeTitle)
                            
                        } .padding()
                        
                        HStack{
                            
                            
                            SelectButton3(
                                isSelected: $isSelected1,
                                image2: Image("eat") ,
                                text: "تناول الطعام "
                                , color: .munjezChosse)
                            .onTapGesture {
                                isSelected1.toggle()
                            }
                            .padding()
                            
                            SelectButton3(
                                isSelected: $isSelected2,
                                image2: Image("teeth") ,
                                text: "تفريش الاسنان "
                                ,color: .munjezChosse)
                            .onTapGesture {
                                isSelected2.toggle()
                            }
                            .padding()
                            SelectButton3(
                                isSelected: $isSelected3,
                                image2: Image("sun") ,
                                text: "الاستيقاظ مبكرا "
                                , color: .munjezChosse)
                            .onTapGesture {
                                isSelected3.toggle()
                            }.padding()
                            
                        }
                        
                        
                        
                        
                        
                       
                        
                        
                        HStack{
                            
                            
                            SelectButton3(
                                isSelected: $isSelected4,
                                image2: Image("sleep") ,
                                text: "وقت النوم"
                                , color: .munjezChosse)
                            .onTapGesture {
                                isSelected4.toggle()
                            }
                            .padding()
                            
                            SelectButton3(
                                isSelected: $isSelected5,
                                image2: Image("play") ,
                                text: "وقت اللعب"
                                , color: .munjezChosse)
                            .onTapGesture {
                                isSelected5.toggle()
                                
                                
                            }.padding()
                            SelectButton3(
                                isSelected: $isSelected6,
                                image2: Image("homework") ,
                                text: "حل الواجبات"
                                , color: .munjezChosse)
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
