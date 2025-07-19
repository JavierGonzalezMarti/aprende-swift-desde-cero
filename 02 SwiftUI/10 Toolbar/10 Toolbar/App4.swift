//
//  App4.swift
//  10 Toolbar
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

struct App4: View {
    var body: some View {
       
        VStack {
            Text("APLICACIÓN 4")
                .foregroundColor(.black)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.fondoApp4)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Título de la App4")
                    .foregroundColor(.black)
                
            }
            
        }
        
        
    }
}

#Preview {
    App4()
}
