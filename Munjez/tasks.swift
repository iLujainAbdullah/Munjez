//
//  ContentView.swift
//  mu
//
//  Created by amjaad on 25/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    
    func buttonPressed (){
        print("pressed")
    }
    
    var body: some View {
        
        
        ZStack{
   Color(.munjezBack).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
              
            VStack{
                Text("أهلاً أحمد لنختر مهامك")
                    .font(.largeTitle).bold()
                    .foregroundColor(.munjezYellow)
                    .padding(.vertical, -0)
                
                HStack{
                ZStack{
                        Rectangle()
                            .frame(width: 200,height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(45)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                VStack{
                            Image("meal")
                                .resizable()
                                .frame(width: 110,height: 110)
                        Text("تناول الطعام")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.munjezBlue)
                        }
                    }
                    
                    .padding(10)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(45)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            Image("tooth")
                                .resizable()
                                .frame(width: 110,height: 110)
                            Text("تفريش الاسنان")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.munjezBlue)
                        }
                    }
                    .padding(10)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(45)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            Image("sun")
                                .resizable()
                                .frame(width: 110,height: 110)
                            Text("الاستيقاظ مبكرًا")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.munjezBlue)
                            
                        }
                    }
                    
                    .padding(10)
                    
                    
                }
                
                
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(45)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            Image("sleep")
                                .resizable()
                                .frame(width: 110,height: 110)
                            Text("وقت النوم")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.munjezBlue)
                        }
                    }
                    
                    .padding(10)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(45)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            Image("play")
                                .resizable()
                                .frame(width: 110,height:110)
                            Text("وقت اللعب")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.munjezBlue)
                        }
                    }
                    
                    .padding(10)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(45)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            Image("book")
                                .resizable()
                                .frame(width: 110,height: 110)
                            Text("حل الواجبات").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.munjezBlue)
                            
                        }
                    }
                    .padding(10)
                    
                    
                }
                
                ZStack{
                    
                    Rectangle()
                        .frame(width: 200,height: 200)
                        .foregroundColor(.white)
                        .cornerRadius(45)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(10)
                        .padding(.leading,450)
                                VStack{
                            (Image(systemName: "plus"))
                                .resizable()
                            .frame(width: 50,height: 50)
                                                .padding(.leading,450)
                                                .font(.largeTitle)
                                                .foregroundColor(.munjezBlue)
                    
                                                .padding(.vertical, 30)
                                             Text("إضافة مهمة").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                .foregroundColor(.munjezBlue)
                                                .padding(.leading, 450)
                                        }
                                                    }
                    
                }
            
                NavigationLink("هيا بنا!" , destination: choosePets())
                    .font(.largeTitle)
                    .frame(width: 300 , height: 100)
                    .foregroundColor(Color.white)
                    .background(Color(.munjezYellow))
                    .cornerRadius(42)
                    .padding(.bottom, -900)
               
            
              
                }
         
           
          
        }
    }



#Preview {
    ContentView()
}
