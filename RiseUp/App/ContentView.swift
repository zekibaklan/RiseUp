//
//  ContentView.swift
//  RiseUp
//
//  Created by Zeki Baklan on 2.04.2024.
//

import SwiftUI


struct ContentView: View {
  
    @State private var currentIndex = 0
    @State private var selectedMod = "Mamba"

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [Color.jackson, Color.storm], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()

                VStack(alignment : .center) {
                    
                    
               
                    Picker("Choose a mod", selection: $selectedMod, content: {
                        ForEach(pickerList,id: \.self) { index in
                            Text(index)
                             
                            
                            
                        }
                        
                    })
                    .pickerStyle(.menu)
                    
                    
                    Text(textler[currentIndex])
                       
                        .font(.system(size: 24, weight: .medium, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                      
                }
                .modifier(swapModifier(currentIndex: $currentIndex, itemCount: textler.count))
                Spacer()
            }
        }
        
    }
}


#Preview {
    ContentView()
}
