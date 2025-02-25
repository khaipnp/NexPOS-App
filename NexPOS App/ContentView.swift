//
//  ContentView.swift
//  NexPOS App
//
//  Created by Khai Pham on 18/2/25.
//

import SwiftUI

struct Constants {
    static let spacing05: CGFloat = 4
    static let BackgroundDefault: Color = .white
    static let radius1: CGFloat = 8
    static let primaryMain: Color = Color(red: 0.96, green: 0.76, blue: 0.29)
    static let spacing1: CGFloat = 8
    static let BackgroundNeutral: Color = Color(
        red: 0.96, green: 0.96, blue: 0.97)
}

struct ContentView: View {
    var body: some View {
//        OrderListView()
        DockView()
    }
}

//#Preview {
//    ContentView()
//}
