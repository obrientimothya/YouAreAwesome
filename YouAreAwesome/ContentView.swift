//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy OBrien on 23/8/2025.
//

import SwiftUI

struct ContentView: View {
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
                let message1: String = "You are awesome!"
                let message2: String = "You are great!"
                
                message = message == message1 ? message2 : message1
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
