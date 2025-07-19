//
//  ContentView.swift
//  12 Componente Slider
//
//  Created by Javi on 19/7/25.
//


import SwiftUI


struct ContentView: View {
    
    
    
    // Declaramos una variable de estado llamada alturaSeleccionada.
    // @State es una propiedad especial que permite que la interfaz se actualice automáticamente cuando su valor cambia.
    // Aquí guardamos la altura que el usuario selecciona con el slider.
    @State var alturaSeleccionada: Double = 150
    
  
    var body: some View {
    
        VStack {
            
           formateadoDeTexto1(texto1: "Altura")
                .padding(.bottom)
            
            formateadoDeTexto2(texto2: "\(Int (alturaSeleccionada)) cm")
            
          
            
            
            
            // Slider es un control que permite seleccionar un valor dentro de un rango.
            // El valor está enlazado a alturaSeleccionada con el símbolo $ para que cambie dinámicamente.
            // El rango va de 100 a 220 y el paso es 1 (solo valores enteros).
           
            
            Slider(value: $alturaSeleccionada, in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 30)
            
           
            Text("La altura que has seleccionado es:")
                .padding(.top, 50)
            
            Text("\(Int(alturaSeleccionada)) cm")
            
        }
       
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
        
        //.padding()
    }
}

struct formateadoDeTexto1: View {
    
    let texto1: String
    
    var body: some View {

        Text(texto1)
            .font(.title2)
            .foregroundColor(.gray)
    }
}


struct formateadoDeTexto2: View {
    

   let texto2: String
    
    var body: some View {
        
        Text(texto2)
            .font(.largeTitle)
            .foregroundColor(.gray)
            .bold()
    }
}


#Preview {
    ContentView()
}
