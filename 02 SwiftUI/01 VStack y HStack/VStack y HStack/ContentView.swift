//
//  ContentView.swift
//  Prueba
//
//  Created by Javi on 16/7/25.
//

        import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
                            }
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
            }
            
            HStack {
                Circle()
                    .foregroundColor(.green)
                
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 100, height: 300)
                
                Circle()
                    .foregroundColor(.purple)
            }
            
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
            }
            
            HStack {
            Rectangle()
                .foregroundColor(.blue)
            Rectangle()
                .foregroundColor(.orange)
            Rectangle()
                .foregroundColor(.yellow)
                        }
        }
        .background(.red)
        .padding()
    }
    
}

#Preview {
    ContentView()
}
