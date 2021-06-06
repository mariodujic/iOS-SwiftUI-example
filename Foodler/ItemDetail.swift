//
//  ItemDetail.swift
//  Foodler
//
//  Created by ground zero on 04/06/2021.
//

import SwiftUI

struct ItemDetail: View {
  
  @EnvironmentObject var order: Order
  let item: MenuItem
  
  var body: some View {
    VStack {
      ZStack(alignment: .bottomTrailing) {
        Image(item.mainImage)
          .resizable()
          .scaledToFit()
        
        
        Text("Photo by: \(item.photoCredit)")
          .padding(4)
          .background(Color.black)
          .foregroundColor(.white)
          .offset(x: -5, y: -5)
      }
      Text(item.description)
        .padding()
      Button("Order this") {
        order.add(item: item)
      }
      Spacer()
    }
    .navigationTitle(item.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct ItemDetail_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView{
      ItemDetail(item: MenuItem.example)
        .environmentObject(Order())
    }
  }
}
