//
//  KeyView.swift
//  Calculator
//
//  Created by Alena Belova  on 2024-09-26.
//

import SwiftUI

struct KeyView: View {
    
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    @State private var changeColor = false
    var body: some View {
        VStack{
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(changeColor ? Color.num : Color.pink.opacity(0.2))
                    .scaleEffect(changeColor ? 1.5 : 1)
                    .frame(width: 350, height: 280)
                    .animation(Animation.easeInOut
                        .speed(0.17).repeatForever(),value:changeColor)
                    .onAppear(perform: {
                        self.changeColor.toggle()
                    }).overlay(Text(self.value)
                        .font(.system(size:100))
                        .foregroundStyle(.black)
                )
            }.padding()
        }
    }
}

#Preview {
    KeyView()
}
