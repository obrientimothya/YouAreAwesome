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
    private let message1: String = "You are awesome!"
    private let message2: String = "You are great!"
    private let imageString1: String = "image0"
    private let imageString2: String = "image1"
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
            
            Button("Press Me!") {
                message = message == message1 ? message2 : message1
                imageName = imageName == imageString1 ? imageString2 : imageString1
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
