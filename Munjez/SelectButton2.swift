//
//  Selectbutton2.swift
//  Munjez
//
//  Created by Ahlamalmutiri on 27/03/1445 AH.
//

import SwiftUI

struct SelectButton2: View {
    
    @Binding var isSelected : Bool
    @State  var image2 :Image
    @State var color :Color
  
    
    
    var body: some View {
        
       
        ZStack{
          
            
            
            Rectangle()
                .frame(width: 250,height: 250)
                .foregroundColor(isSelected ? color : .white)
                .cornerRadius(45)
                .shadow(radius:10)
        
            image2
                .resizable()
                .frame(width: 190 ,height: 190)
            
        }
        
        
    }

    
}

struct SelectButton2_Previews : PreviewProvider {
    static var previews : some View {

        SelectButton2(isSelected: .constant(false),  image2:Image("custom-image") ,color : .orange)
       
    }}

