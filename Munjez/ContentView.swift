//
//  ContentView.swift
//  Munjez
//
//  Created by Lujain Abdullah Halabi Almeri on 24/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var givenName: String = ""
    @State private var isTapped = false
    let recName = "testi"
    
    var body: some View {
        ZStack {
            Color(.munjezBack).edgesIgnoringSafeArea(.all)
            VStack{
                Text("أهلا ياصديقنا ! ساعدنا بالتعرف عليك ")
                .font(.largeTitle)

                TextField( " اسمك",  text: $givenName)
                               .padding(.leading, 300)
                               .foregroundColor(.gray)
                               .font(.largeTitle)
                               .frame(width: 673 , height: 95)
                               .background(Color.gray.opacity(0.09))
                               .cornerRadius(29)

                HStack{
                    ZStack{
                        Rectangle().foregroundColor(Color.white).frame(maxWidth: 200, maxHeight: 200)
                            .background(Color.white)
                            .padding(0)
                            .cornerRadius(20)
                            .padding(.horizontal,15)
                            Image("r")
                            .id(recName)
                      
                        
                        Text("\(recName)")
                    }
                    Text("Stake tokens and get rewards")
                        .foregroundColor(.black)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .background(Color.white)
                        .padding(0)
                        .cornerRadius(20)
                        .padding(.horizontal,15)
                    
                    Text("Stake tokens and get rewards")
                        .foregroundColor(.black)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .background(Color.white)
                        .padding(0)
                        .cornerRadius(20)
                        .padding(.all,15)
                }
                HStack{
                    Text("Stake tokens and get rewards")
                        .foregroundColor(.black)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .background(Color.white)
                        .padding(0)
                        .cornerRadius(20)
                        .padding(.all,15)
                    
                    Text("Stake tokens and get rewards")
                        .foregroundColor(.black)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .background(Color.white)
                        .padding(0)
                        .cornerRadius(20)
                        .padding(.all,15)
                    
                    Text("last")
                        .foregroundColor(.black)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .background(Color.white)
                        .padding(0)
                        .cornerRadius(20)
                        .padding(.all,15)
                        /*.onTapGesture {
                            print("Image tapped!")
                        }*/
                    
                }
              
            }
        }
    }
}


#Preview {
    ContentView()
}
