//
//  ContentView.swift
//  10 Toolbar
//
//  Created by Javi on 18/7/25.
//

import SwiftUI

struct MenuPrincipal: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                NavigationLink(destination: App1()) {
                    
                        Text("App 1")
                    }
                
                NavigationLink(destination: App2()) {
                    
                        Text("App 2")
                    }
                
                NavigationLink(destination: App3()) {
                    
                        Text("App 3")
                    }
                
                NavigationLink(destination: App4()) {
                    
                        Text("App 4")
                    }
                
                NavigationLink(destination: App5()) {
                    
                        Text("App 5")
                    }
                
                
            
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.fondoMenuPrincipal)
        }
    }
    
    
}


#Preview {
    MenuPrincipal()
}
