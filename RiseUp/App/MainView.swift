//
//  MainView.swift
//  RiseUp
//
//  Created by Zeki Baklan on 2.04.2024.
//
import SwiftUI

struct MainView: View {
 


    
    var body: some View {
      TabView {
        ContentView()
          .tabItem({
            Image(systemName: "house")
            Text("Anasayfa")
          })
        ShopingView()
          .tabItem({
            Image(systemName: "book")
            Text("Kitaplık")
          })
        ListView()
          .tabItem({
            Image(systemName: "cart")
            Text("Sepet")
          })
        ProfileView()
          .tabItem({
            Image(systemName: "person")
            Text("Profil")
          })
      }
      .accentColor(Color.white)
    }
}

#Preview {
  MainView()
}
