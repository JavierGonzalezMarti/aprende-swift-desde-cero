//
//  App5.swift
//  10 Toolbar
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

struct App5: View {
    var body: some View {
       
        VStack {
            Text("APLICACIÓN 5")
                .foregroundColor(.black)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.fondoApp5)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Título de la App5")
                    .foregroundColor(.black)
            }
            
        }
        
    }
}

#Preview {
    App5()
}
