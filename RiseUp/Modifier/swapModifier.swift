//
//  swapModifier.swift
//  RiseUp
//
//  Created by Zeki Baklan on 2.04.2024.
//



import Foundation
import SwiftUI

struct swapModifier: ViewModifier {
  @Binding var currentIndex: Int
  let itemCount: Int
  let threshold: CGFloat = 25 // Minimum swipe distance for text change

  func body(content: Content) -> some View {
    content
      .gesture(
        DragGesture()
          .onEnded { value in
            if abs(value.translation.height) > threshold {
              withAnimation {
                  
                  let newIndex = (currentIndex + (value.translation.height < 0 ? 1 : -1)) % itemCount
                  currentIndex = max(0, newIndex) 
                  
                  print(currentIndex)
              }
            }
          }
      )
  }
}






#Preview {
    ContentView()
}


