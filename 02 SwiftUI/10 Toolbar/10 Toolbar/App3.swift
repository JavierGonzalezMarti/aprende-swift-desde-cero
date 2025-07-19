//
//  App3.swift
//  10 Toolbar
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

struct App3: View {
    var body: some View {
        
        VStack {
            Text("APLICACIÓN 3")
                .foregroundColor(.white)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.fondoApp3)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Título de la App3")
                    .foregroundColor(.white)
            }
            
        }
        
    }
}

#Preview {
    App3()
}
