//
//  MunjezApp.swift
//  Munjez
//
//  Created by Lujain Abdullah Halabi Almeri on 24/03/1445 AH.
//

import SwiftUI

@main
struct MunjezApp: App {
    @State var isSelected = [Bool]() //A
    var body: some Scene {
        WindowGroup {
            tasksList()
        }
    }
}
