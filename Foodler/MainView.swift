//
//  MainView.swift
//  Foodler
//
//  Created by ground zero on 06/06/2021.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    TabView{
      ContentView()
        .tabItem { Label("Menu", systemImage:"list.dash") }
      OrderView()
        .tabItem { Label("Orders", systemImage:"square.and.pencil") }
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
      .environmentObject(Order())
  }
}
