//
//  ContentView.swift
//  Calculator
//
//  Created by Alena Belova  on 2024-09-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.5), Color.purple.opacity(0.5)]),startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            KeyView()
        }
        
    }
}

#Preview {
    ContentView()
}
