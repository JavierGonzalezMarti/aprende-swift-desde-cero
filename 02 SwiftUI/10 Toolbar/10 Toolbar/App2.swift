//
//  App2.swift
//  10 Toolbar
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

struct App2: View {
    var body: some View {
        
        VStack {
            Text("APLICACIÓN 2")
                .foregroundColor(.white)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.fondoApp2)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Título de la App2")
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    App2()
}
