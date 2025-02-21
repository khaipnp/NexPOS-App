//
//  OrderDetailView.swift
//  NexPOS App
//
//  Created by Khai Pham on 21/2/25.
//

import SwiftUI

struct OrderItem: Identifiable {
    var id = UUID()
    var itemName: String
    var itemPrice: Double
    var itemQuantity: Int
    var options: [String] = []
}

struct OrderDetailView: View {
    @Binding var orderCode: String
    @State var bookingTime: String = "14:00 12/12/2024"
    @State var finishedTime: String = "14:20 12/12/2024"
    @State var itemQuantity: Int = 1
    @State var note: String = ""
    @State var options: [String] = ["It duong", "Khong da"]
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    HStack {
                        Text("Khách đặt lúc")
                        Spacer()
                        Text(bookingTime)
                    }
                    if !finishedTime.isEmpty {
                        HStack {
                            Text("Hoàn thành lúc")
                            Spacer()
                            Text(finishedTime)
                        }
                    }
                }.padding().background(.white)
                
                VStack(alignment: .leading) {
                    Text("Đơn hàng").font(.title3)
                    HStack {
                        VStack {
                            Text("\(itemQuantity)x Nước ép thơm đặc biệt")
                            if !options.isEmpty {
                                ForEach(options) { ops in
                                    Text(ops)
                                }
                            }
                            if !note.isEmpty {
                                Text("Ghi chú: \(note)")
                            }
                        }
                        
                    }
                }
            }
        }.navigationBarTitleDisplayMode(.large).background(Constants.BackgroundNeutral)
    }
}

//#Preview {
//    OrderDetailView()
//}
