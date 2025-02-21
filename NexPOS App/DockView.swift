//
//  TabView.swift
//  NexPOS App
//
//  Created by Khai Pham on 21/2/25.
//

import SwiftUI

struct DockView: View {
    var body: some View {
        TabView {
            Tab {
                OrderListView()
            } label: {
                Image(systemName: "list.bullet.below.rectangle")
                Text("Đơn hàng")
            }

            Tab {
                Text("Tab 2")
            } label: {
                Image(systemName: "note.text.badge.plus")
                Text("Tạo đơn hàng")
            }
            Tab {
                Text("gear")
            } label: {
                Image(systemName: "gear")
                Text("Cài đặt")
            }
        }
    }
}
//
//#Preview {
//    DockView()
//}
