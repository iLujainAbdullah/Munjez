//
//  personalPage.swift
//  Munjez
//
//  Created by Ahlamalmutiri on 27/03/1445 AH.
//

import SwiftUI

struct personalPage: View {
    @State private var nameChild: String = ""
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    
    
    
    var body: some View {
      
        NavigationStack{
        ZStack{
         
            Color(.munjezBack) .edgesIgnoringSafeArea(.all)
                    VStack{
                        
                        HStack{
                            Text("ساعدنا بالتعرف عليك")
                                .font(.largeTitle)
                            Text("أهلاً ياصديقنا !")
                                .foregroundColor(Color(.munjezYellow))
                                .font(.largeTitle)
                            
                        }
                        .padding()
                        TextField( " اسمك",  text: $nameChild  )
                            .padding(.leading , 300)
                            .foregroundColor(.gray)
                            .font(.largeTitle)
                            .frame(width: 700 , height: 95)
                            .background(Color.gray.opacity(0.09))
                            .cornerRadius(29)
                        
                            .padding(.top , 50)
                        
                        HStack{
                            
                            
                            SelectButton(isSelected: $isSelected1, image1: Image("girl") , color: (Color.munjezChosse))
                                .onTapGesture {
                                    isSelected1.toggle()
                                    if isSelected1{
                                        isSelected2 = false
                                    }
                                }
                            
                            
                            
                            SelectButton(isSelected: $isSelected2,image1: Image("boy") ,color: (Color.munjezChosse))
                                .onTapGesture {
                                    isSelected2.toggle()
                                    if isSelected2{
                                        isSelected1 = false
                                    }
                                }
                            
                            
                        }
                      
                        .padding(.top , 30)
                        
                        
                        NavigationLink("هيا بنا!" , destination: choosePets())
                            .font(.largeTitle)
                            .frame(width: 300 , height: 100)
                            .foregroundColor(Color.white)
                            .background(Color(.munjezYellow))
                            .cornerRadius(42)
                            .padding()
                          
                        
                    }
                    
                }
               
                
            }
            
            
            
        }
        
        
    }





#Preview {
    personalPage()
    
}

