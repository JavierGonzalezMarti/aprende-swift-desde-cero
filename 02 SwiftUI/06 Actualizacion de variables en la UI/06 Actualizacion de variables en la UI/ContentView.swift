//
//  ContentView.swift
//  06 Actualizacion de variables en la UI
//
//  Created by Javi on 17/7/25.
//

import SwiftUI

struct ContentView: View {
    @State var contadorPulsaciones = 0
    var body: some View {
        VStack {
            
            Text("\(contadorPulsaciones)")
                .font(.largeTitle)
            
            
            Button(action:
                    {
                contadorPulsaciones += 1
                print ("Pulsado \(contadorPulsaciones) veces")
                
                
            },
                   
                   
                   label:
                    {Text("Púlsame para actualizar la variable en pantalla")})
            . frame(width: 300, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            
            
            Button(action:
                    {
                contadorPulsaciones = 0
                print ("Se ha reiniciado las pulsaciones a \(contadorPulsaciones).")
                
                
            },
                   
                   
                   label:
                    {
                        Image(systemName: "arrow.trianglehead.counterclockwise")
                           
                    })
            .frame(width: 100, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(20)
            
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
