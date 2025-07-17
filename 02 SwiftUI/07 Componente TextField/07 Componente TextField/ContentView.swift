//
//  ContentView.swift
//  07 Componente TextField
//
//  Created by Javi on 17/7/25.
//

import SwiftUI

struct ContentView: View {
    @State var textoQueEscribeElUsuario1 = ""
    @State var textoQueEscribeElUsuario2 = ""
    @State var textoQueEscribeElUsuario3 = ""
    @State var textoQueEscribeElUsuario4 = ""
    @State var textoQueEscribeElUsuario5 = ""
    var body: some View {
        VStack {
            
            VStack (spacing: 25){
                TextField(
                    "Teclado por defecto",
                    text: $textoQueEscribeElUsuario1
                )
                .keyboardType(.default)
                .padding(20)
                .background(Color.gray.opacity(0.2))
                .padding(.horizontal, 30)
             

                TextField(
                    "Teclado de email",
                    text: $textoQueEscribeElUsuario2
                )
                .keyboardType(.emailAddress)
                .padding(20)
                .background(Color.gray.opacity(0.2))
                .padding(.horizontal, 30)
                

                TextField(
                    "Teclado números",
                    text: $textoQueEscribeElUsuario3
                )
                .keyboardType(.numberPad)
                .padding(20)
                .background(Color.gray.opacity(0.2))
                .padding(.horizontal, 30)
               

                TextField(
                    "Teclado URL",
                    text: $textoQueEscribeElUsuario4
                )
                .keyboardType(.URL)
                .padding(20)
                .background(Color.gray.opacity(0.2))
                .padding(.horizontal, 30)
                
                TextField(
                    "Teclado Twitter",
                    text: $textoQueEscribeElUsuario5
                )
                .keyboardType(.twitter)
                .padding(20)
                .background(Color.gray.opacity(0.2))
                .padding(.horizontal, 30)
              
                VStack(alignment: .leading, spacing: 5) {
                    Text("Lo que escribiste es:")

                    if !textoQueEscribeElUsuario1.isEmpty {
                        Text(textoQueEscribeElUsuario1)
                    }
                    if !textoQueEscribeElUsuario2.isEmpty {
                        Text(textoQueEscribeElUsuario2)
                    }
                    if !textoQueEscribeElUsuario3.isEmpty {
                        Text(textoQueEscribeElUsuario3)
                    }
                    if !textoQueEscribeElUsuario4.isEmpty {
                        Text(textoQueEscribeElUsuario4)
                    }
                    if !textoQueEscribeElUsuario5.isEmpty {
                        Text(textoQueEscribeElUsuario5)
                    }
                }
                .padding(.top, 20)
            }
         

            Spacer()
        }
        .frame(maxHeight: .infinity,alignment: .top)
        .padding()
    }
}

#Preview {
    ContentView()
}
