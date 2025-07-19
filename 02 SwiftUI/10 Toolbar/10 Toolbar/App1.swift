//
//  App1.swift
//  10 Toolbar
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

struct App1: View {
    var body: some View {
                
        VStack {
            Text("APLICACIÓN 1")
                .foregroundColor(.white)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.fondoApp1)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Título de la App1")
                    .foregroundColor(.white)
            }
            
        }
    }
}

#Preview {
    App1()
}
