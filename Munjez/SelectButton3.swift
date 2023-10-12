//
//  SelectButton3.swift
//  Munjez
//
//  Created by Ahlamalmutiri on 27/03/1445 AH.
//

import Foundation
import SwiftUI

struct SelectButton3: View {
    
    @Binding var isSelected : Bool
    @State  var image2 :Image
    @State var text : String
    @State var color :Color
    var body: some View {
        
      
        ZStack{
            Rectangle()
                .frame(width: 260,height: 260)
                .foregroundColor(isSelected ? color : .white)
                .cornerRadius(45)
                .shadow(radius:10)
           
            VStack{
               image2
                    .resizable()
                    .frame(width: 200 ,height: 200)
               
                Text(text)
                    .foregroundColor(Color(.munjezYellow))
                    .font(.largeTitle)
                
            }}
            
            
        }}

    


struct SelectButton3_Previews : PreviewProvider {
    static var previews : some View {

        SelectButton3(isSelected: .constant(false) ,image2:Image("custom-image"),text : "option", color : .orange)
       
    }}

