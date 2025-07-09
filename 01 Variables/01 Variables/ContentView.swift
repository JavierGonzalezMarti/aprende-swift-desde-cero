//  ContentView.swift
// Esto indica el inicio del archivo llamado ContentView.swift

//  01 Variables
// Es parte de la app "01 Variables"

//  Created by Javi on 9/7/25.
// Fue creado por Javi el 9 de julio de 2025


// Aquí se importa SwiftUI, una herramienta para crear la parte visual de la app
import SwiftUI



// Aquí se crea una estructura llamada ContentView, que es lo que verá el usuario en pantalla
struct ContentView: View {
    
    
    
    
    // Esta parte define lo que se va a mostrar en la pantalla
    var body: some View {
        
        
        
        // VStack organiza los elementos en una columna, uno debajo del otro
        VStack {
            
            
            
            // Aquí se muestra una imagen de un globo terráqueo (ícono del sistema)
            Image(systemName: "globe")
            
            
                // Se hace que la imagen se vea un poco más grande
                .imageScale(.large)
            
            
                // Se aplica un color predeterminado al ícono
                .foregroundStyle(.tint)
            
            
            // Aquí se muestra un texto que dice "Hello, world!"
            Text("Hello, world!")
        }
        // Se agrega un espacio alrededor del contenido para que no esté pegado a los bordes
        .padding()
    }
}

// Esta parte sirve para ver una vista previa del diseño sin tener que ejecutar toda la app
#Preview {
    ContentView()
}
