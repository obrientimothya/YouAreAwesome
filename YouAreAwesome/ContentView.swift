//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy OBrien on 23/8/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var messageIndex: Int = 0
    @State private var message: String = ""
    @State private var imageName: String = ""
    @State private var imageNumber: Int = 0
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages: [String] = [
                    "You are awesome",
                    "Way to go! This is a really good one! You are truly so awesome!",
                    "Keep it up you are really good!",
                    "You are great!"]
                message = messages[messageIndex]
                messageIndex = Int.random(in: 0..<messages.count - 1)
                let imageNumber = Int.random(in: 0...9)
                imageName = "image\(imageNumber)"
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
