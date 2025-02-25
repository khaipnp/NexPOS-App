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
    @State var isDelivery: Bool = true
    @State var deliveryName: String = "Phan Van Hon"
    @State var deliveryPhone: String = "0909552099"
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
                }.padding().background(.white).clipShape(.rect(cornerRadius: Constants.radius1))
                
                VStack(alignment: .leading) {
                    Text("Đơn hàng").font(.headline)
                    HStack {
                        VStack {
                            Text("\(itemQuantity)x Nước ép thơm đặc biệt")
                            if !note.isEmpty {
                                Text("Ghi chú: \(note)")
                            }
                        }
                        
                    }
                }.padding().background(.white)
                
                if isDelivery {
                    VStack(alignment: .leading) {
                        Text("Giao hàng").font(.headline)
                        HStack {
                            Image(systemName: "truck.box.badge.clock")
                            VStack {
                                HStack {
                                    Text("\(deliveryName) -")
                                    Text(deliveryPhone).foregroundStyle(.secondary)
                                }
                                
                                if !note.isEmpty {
                                    Text("Ghi chú: \(note)")
                                }
                            }
                            Spacer()
                        }
                    }.padding().background(.white)
                }
                
                Spacer()
            }.padding().background(Constants.BackgroundNeutral)
        }
    }
}

//#Preview {
//    OrderDetailView()
//}
