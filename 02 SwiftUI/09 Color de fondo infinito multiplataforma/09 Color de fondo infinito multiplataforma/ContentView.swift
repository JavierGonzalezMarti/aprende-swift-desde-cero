//
//  ContentView.swift
//  09 Color de fondo infinito multiplataforma
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.colorDeFondo)
            
            
        
        
    }
}

#Preview {
    ContentView()
}
