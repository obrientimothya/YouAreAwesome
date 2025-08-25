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
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Show Message") {
                let messages: [String] = ["You are awesome", "Way to go!", "Keep it up!", "You are great!"]
                message = messages[messageIndex]
                messageIndex = messageIndex == messages.count - 1 ? 0 : messageIndex + 1
                imageNumber = imageNumber == 9 ? 0 : imageNumber + 1
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
