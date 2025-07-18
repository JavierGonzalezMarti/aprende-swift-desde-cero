//
//  ContentView.swift
//  08 Navegar por vistas
//
//  Created by Javi on 17/7/25.
//

import SwiftUI

struct MenuPrincipal: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                NavigationLink(destination: IMCVista()) {
                    
                        Text("Calculadora de IMC")
                        
                    
                }
                Text("App 2")
                Text("App 3")
                Text("App 4")
                Text("App 5")
                
            }
        }
    }
    
    
}


#Preview {
    MenuPrincipal()
}
