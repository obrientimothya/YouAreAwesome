//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy OBrien on 23/8/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = "I Am A Programmer!"
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    message = "Awesome!"
                    print(message)
                }
                Button("Great") {
                    message = "Great!"
                    print(message)
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()

    }
}

#Preview {
    ContentView()
}
