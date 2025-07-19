//
//  ContentView.swift
//  11 Componente Toggle
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

// Este archivo muestra cómo crear una interfaz con botones que simulan un "toggle".
// Cuando se pulsa un botón, cambia el color de fondo para indicar que está activado.
// Se usan conceptos como @State, @Binding y vistas personalizadas con imágenes y texto.

// ─────────────────────────────
// PARTE 1: Vista principal
// ─────────────────────────────
struct ContentView: View {
    
    // Esta variable guarda qué opción ha sido seleccionada (0 a 5).
    // @State indica que es una propiedad que puede cambiar y que cuando lo hace,
    // la vista se actualiza automáticamente.
    @State var opcion: Int = 0
    
    
    
    var body: some View {
        VStack {
            
            // Primer grupo de botones (opciones 1 a 3)
            HStack{
                
                botonToggle(texto: "Opción 1", nombreDeLaImagen: "heart.fill", opcion: 0, opcionSeleccionada: $opcion)
                botonToggle(texto: "Opción 2", nombreDeLaImagen: "star.fill", opcion: 1, opcionSeleccionada: $opcion)
                botonToggle(texto: "Opción 3", nombreDeLaImagen: "sun.max.fill", opcion: 2, opcionSeleccionada: $opcion)
            }
            
            // Segundo grupo de botones (opciones 4 a 6)
            HStack{
                
                botonToggle(texto: "Opción 4", nombreDeLaImagen: "message.fill", opcion: 3, opcionSeleccionada: $opcion)
                botonToggle(texto: "Opción 5", nombreDeLaImagen: "gamecontroller.circle.fill", opcion: 4,opcionSeleccionada: $opcion)
                botonToggle(texto: "Opción 6", nombreDeLaImagen: "person.fill", opcion: 5,opcionSeleccionada: $opcion)
            }
            
            
        }
        //.padding()
    }
}

// ─────────────────────────────
// PARTE 2: Componente personalizado (botón tipo toggle)
// ─────────────────────────────
// Componente personalizado: representa un botón estilo "toggle visual" usado dentro de ContentView

struct botonToggle: View {
    let texto:String
    let nombreDeLaImagen: String
    let opcion: Int
    @Binding var opcionSeleccionada: Int
    
    
    
    
    
    
    
    // Esta vista representa un "toggle visual", es decir, un botón que puede estar activo o inactivo
    // dependiendo de si coincide con la opción seleccionada. El color y el diseño cambian para mostrar
    // esa selección al usuario.
    
    var body: some View {
        
        // Calculamos el color dependiendo si esta opción está seleccionada o no.
        // Esto ayuda a que el usuario vea claramente qué opción está activa.
        let colorDelToggle =
        // Comparamos si esta opción es la seleccionada.
        if (opcionSeleccionada == opcion) {
            Color.orange
        } else {
            Color.teal
        }
        
        
        Button(action: {
            // Al pulsar este botón, guardamos esta opción como la seleccionada.
            // @Binding es una forma de conectar esta variable con otra fuente de verdad,
            // para que cuando cambiemos esta variable aquí, también se actualice en la vista principal.
            opcionSeleccionada = opcion
            
        }){
            // Aquí dibujamos el contenido del botón: una imagen y un texto, uno encima del otro.
            VStack{
                Image(systemName: nombreDeLaImagen)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                estiloDeTexto(texto: texto)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            // El fondo cambiará según si esta opción está activa o no,
            // usando el color que calculamos antes.
            .background(colorDelToggle)
        }
    }
}

// ─────────────────────────────
// PARTE 3: Componente auxiliar (estilo de texto)
// ─────────────────────────────

// Componente auxiliar: da estilo al texto mostrado en los botones
struct estiloDeTexto: View {
    let texto: String
    
    var body: some View {
        Text(texto).font(.headline).bold().foregroundColor(.white)
    }
}

// ─────────────────────────────
// PARTE 4: Vista de previsualización
// ─────────────────────────────
#Preview {
    ContentView()
}
