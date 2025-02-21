//
//  OrderListView.swift
//  NexPOS App
//
//  Created by Khai Pham on 21/2/25.
//

import SwiftUI

struct OrderListView: View {
    @State var searchText: String = ""
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
                VStack {
                    TextField("Nhập mã đơn hàng", text: $searchText).padding()
                        .background(.white).clipShape(.buttonBorder)
                }.padding(
                    EdgeInsets(top: 56, leading: 12, bottom: 12, trailing: 12)
                ).background(Constants.primaryMain)
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<10) { item in
                        CardOrderView(orderCode: String("SPF - \(item)"))
                    }
                }.padding(.horizontal).clipped()

            }.ignoresSafeArea().background(Constants.BackgroundNeutral)
        }
    }
}

#Preview {
    OrderListView()
}
