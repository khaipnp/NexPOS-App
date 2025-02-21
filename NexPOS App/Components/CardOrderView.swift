//
//  CardOrderView.swift
//  NexPOS App
//
//  Created by Khai Pham on 18/2/25.
//

import SwiftUI

struct CardOrderView: View {
    @State var customerName: String = "Nguyễn Hữu Huy"
    @State var customerPhone: String = "0329298151"
    @State var orderStatus: String = "Đang làm"
    @State var quantityItem: String = "4"
    @State var totalPrice: String = "200.000 ₫"
    @State var orderCode: String
    @State var brandName: String = "Sạp Lê La"
    var body: some View {
        NavigationLink(destination: OrderDetailView(orderCode: $orderCode)) {
            VStack(alignment: .leading, spacing: Constants.spacing05) {
                HStack {
                    HStack {
                        Image(systemName: "house.fill")
                        VStack(alignment: .leading) {
                            Text(orderCode).font(.title3).bold()
                            Text(brandName).foregroundStyle(.secondary)
                        }
                    }
                    Spacer()
                    Text(orderStatus).font(.subheadline).padding(
                        EdgeInsets(
                            top: 0.5, leading: 4, bottom: 0.5, trailing: 4)
                    ).background(Constants.primaryMain).clipShape(.capsule)
                }
                HStack(alignment: .center) {
                    Image(systemName: "person")
                    Text("\(customerName) - \(customerPhone)")
                }
                HStack(alignment: .center) {
                    Image(systemName: "basket")
                    Text("\(quantityItem) sản phẩm")
                }
                HStack(alignment: .center) {
                    Image(systemName: "dongsign.square")
                    Text("\(totalPrice)")
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .background(Constants.BackgroundDefault)
            .cornerRadius(Constants.radius1)
        }
    }
}

//#Preview {
//    CardOrderView()
//}
