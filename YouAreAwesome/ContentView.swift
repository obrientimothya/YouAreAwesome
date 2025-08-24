//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy OBrien on 23/8/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var imageString: String = ""
    private let message1: String = "You are awesome!"
    private let message2: String = "You are great!"
    private let imageString1: String = "sun.max.fill"
    private let imageString2: String = "hand.thumbsup"
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if (message == message1) {
                Image(systemName: imageString)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.orange)
            }
            if (message == message2){
                Image(systemName: imageString)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.orange)
            }
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            
            Button("Press Me!") {
                if(message == message1) {
                    message = message2
                    imageString = imageString2
                } else {
                    message = message1
                    imageString = imageString1
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
