//
//  OrderView.swift
//  Foodler
//
//  Created by ground zero on 06/06/2021.
//

import SwiftUI

struct OrderView: View {
  
  @EnvironmentObject var order: Order
  
  var body: some View {
    NavigationView{
      List{
        Section{
          ForEach(order.items) {item in
            HStack {
              Text(item.name)
              Spacer()
              Text("$\(item.price)")
            }
          }
        }
        Section {
          NavigationLink(
            destination: Text("Checkout")) {
            Text("Place order")
          }
        }
      }
      .navigationTitle("Orders")
      .listStyle(InsetGroupedListStyle())
    }
  }
}

struct OrderView_Previews: PreviewProvider {
  static var previews: some View {
    OrderView()
      .environmentObject(Order())
  }
}
