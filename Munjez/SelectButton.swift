//
//  Selectbutton.swift
//  Munjez
//
//  Created by Ahlamalmutiri on 27/03/1445 AH.
//


import SwiftUI

struct SelectButton: View {
    
    @Binding var isSelected : Bool
    @State  var image1 :Image
    @State var color :Color
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 320,height: 320)
                .foregroundColor(isSelected ? color : .white)
                .cornerRadius(45)
                .shadow(radius:10)
            image1
                .resizable()
                .frame(width: 400 ,height: 320)
        }
    }
}

struct SelectButton_Previews : PreviewProvider {
    static var previews : some View {
        
        SelectButton(isSelected: .constant(false),  image1:Image("custom-image") ,color : .orange)
        
    }
}



