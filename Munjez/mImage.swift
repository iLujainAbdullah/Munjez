//
//  map2.swift
//  Munjez
//
//  Created by Reem Alhalafi on 02/04/1445 AH.
//

import Foundation
import SwiftUI

struct mImage: View {
    @State var img: Image
    var body: some View {
        img
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .padding(-370)
            .padding(.leading,70)
    }
}
struct mIage_Previews: PreviewProvider{
    static var previews: some View{
        mImage(img: Image("custom-image"))
    }
}
