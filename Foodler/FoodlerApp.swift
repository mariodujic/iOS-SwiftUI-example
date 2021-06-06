//
//  FoodlerApp.swift
//  Foodler
//
//  Created by ground zero on 30/05/2021.
//

import SwiftUI

@main
struct FoodlerApp: App {
  
  @StateObject var order = Order()
  
  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(order)
    }
  }
}
