//
//  ContentView.swift
//  13 Componente Counter
//
//  Created by Javi on 19/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            VStack {
                HStack {
                    componenteContador(texto1: "Edad", contador: 18)
                    componenteContador(texto1: "Peso", contador: 60)
                }
            }
            .padding()
        }
    }
}


struct formateadoDelTexto1: View {
    let texto1: String
    
    var body: some View {
        Text(texto1)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}


struct formateadoDelTexto2: View {
    let texto2: String
    
    var body: some View {
        Text(texto2)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}


struct componenteContador: View {
    let texto1: String
    @State var contador: Int

    var body: some View {
        VStack {
            formateadoDelTexto1(texto1: texto1)
            formateadoDelTexto2(texto2: "\(contador)")
            HStack {
                Button(action: {
                    contador += 1
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.green)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .bold()
                    }
                }
                Button(action: {
                    contador = max(0, contador - 1)
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.green)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .bold()
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
        
        
    }
}



#Preview {
    ContentView()
}
