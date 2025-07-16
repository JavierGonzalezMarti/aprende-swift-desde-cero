//
//  ContentView.swift
//  05 Componente Boton
//
//  Created by Javi on 16/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Hola")
            }) {
                Text("Púlsame")
                    .frame(width: 200, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
