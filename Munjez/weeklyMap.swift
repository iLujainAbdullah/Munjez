//
//  map.swift
//  Munjez
//
//  Created by Reem Alhalafi on 02/04/1445 AH.
//
import SwiftUI

struct weeklyMap: View {
    @AppStorage("days") var days: Int = 0
    @State private var isMove = false
    @State private var timer: Timer?
    @State private var showTasksList = false // State variable to control the navigation
    
    var body: some View {
      //  NavigationView { // Add NavigationView here
            ZStack {
                Color(.munjezBack)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                  //  NavigationLink(destination: tasksList(), isActive: $showTasksList) {
                   //     EmptyView()
                 //   }
                    Image("map")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 1300, height: 1300)
                    
                    switch days {
                    case 1:
                        mImage(img: Image("cat")).offset(x: -2, y: -1).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    case 2:
                        mImage(img: Image("cat")).offset(x: 500, y: -12).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    case 3:
                        mImage(img: Image("cat")).offset(x: 276, y: -150).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    case 4:
                        mImage(img: Image("cat")).offset(x: -1, y: -292).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    case 5:
                        mImage(img: Image("cat")).offset(x: 507, y: -293).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    case 6:
                        mImage(img: Image("cat")).offset(x: 276, y: -440).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    case 7:
                        mImage(img: Image("cat")) .offset(x: 565, y: -582).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    default:
                        mImage(img: Image("")).offset(x: 580, y: -150).overlay(Circle().stroke(Color.munjezCircle, lineWidth:5))
                    }
                }
                .fullScreenCover(isPresented: $isMove, content: {
                    FinalPage()
                        .onAppear {
                            delayDismissFinalPage()
                        }
                })
                .padding()
            }
            .onAppear(perform: {
                delayShowFinalPage()
            })
      //  }
    }
    
    func delayShowFinalPage() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            isMove = true
        }
    }
    
    func delayDismissFinalPage() {
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { _ in
            isMove = false // Dismiss FinalPage after 5 seconds
            showTasksList = true // Navigate to tasksList()
        }
    }
}
