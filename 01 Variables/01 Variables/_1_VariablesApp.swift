//  _1_VariablesApp.swift
// Esto indica el inicio del archivo llamado _1_VariablesApp.swift


//  01 Variables
// Es el archivo de una aplicación llamada "01 Variables"


//  Created by Javi on 9/7/25.
// Fue creado por Javi el día 9 de julio de 2025





// Aquí se está "importando" SwiftUI, que es como una caja de herramientas para crear pantallas en una app.
import SwiftUI

// Esto marca el punto donde empieza la aplicación; es como decir "desde aquí arranca todo".
@main

// Aquí se define la estructura principal de la app, llamada _1_VariablesApp. Es como el plano general de la app.
struct _1_VariablesApp: App {

    // Esto dice que el contenido principal (el "cuerpo") va a tener una parte visible, llamada "Scene".
    var body: some Scene {

        // Aquí se indica que la app va a tener una ventana, como la que ves cuando abres una app.
        WindowGroup {

            // Aquí se llama a ContentView, que es otra parte del programa donde se dibuja lo que verá el usuario.
            ContentView()
        }
    }
}
