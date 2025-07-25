//
//  ContentView.swift
//  14 Metabolismo Basal
//
//  Created by Javi on 24/7/25.
//

import SwiftUI



struct ContentView: View {
    @State var sexo = ""
    @State var altura:Double = 170
    @State var peso:Double = 60
    @State var edad:Int = 40
    @State var actividad:String = "Moderada (3-5 días semana)"
    
    let opcionesActividad = ["Sedentaria", "Ligera (1-3 días semana)", "Moderada (3-5 días semana)", "Intensa (6-7 días semana)", "Muy intensa (2 sesiones al día)"]
    
    var body: some View {
        ZStack {
            Color("fondoOscuro").ignoresSafeArea()
            VStack {
                HStack {
                    
                    Button(action: { sexo = "Hombre"; print("El sexo seleccionado es \(sexo)")}, label:{
                        
                        
                        VStack {
                            Text ("Hombre")
                                .padding()
                                .foregroundStyle(.black)
                                .font(.title)
                                .bold ()
                            Image ("iconoHombre")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 80)
                                .padding()
                            
                        }.frame(maxWidth: .infinity)}
                           
                           
                    )
                    .frame(maxWidth: .infinity)
                    .background(sexo == "Hombre" ? Color.verdeOscuro : Color.gris)
                    .cornerRadius(5)
                    .foregroundStyle(.white)
                    
                    
                    
                    
                    Button(action: { sexo = "Mujer"; print("El sexo seleccionado es \(sexo)")}, label:{
                        
                        
                        VStack {
                            Text ("Mujer")
                                .padding()
                                .foregroundStyle(.black)
                                .font(.title)
                                .bold ()
                            Image ("iconoMujer")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 80)
                                .padding()
                        }.frame(maxWidth: .infinity)})
                    
                    
                    .frame(maxWidth: .infinity)
                    .background(sexo == "Mujer" ? Color.verdeOscuro : Color.gris)
                    .cornerRadius(5)
                    .foregroundStyle(.white)
                    
                    
                }
                
                VStack {
                    Text("Altura: \(String(format: "%.2f", altura)) cm")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Slider(value: $altura, in: 150...220, step: 0.1)
                        .padding()
                        .accentColor(Color.verdeOscuro)
                    
                    
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color.gris)
                //.padding(.vertical)
                
                HStack {
                    VStack {
                        
                        Text ("Peso:")
                            .font(.title)
                            .bold()
                            .padding(.top)
                        
                        Text ("\(String(format: "%.2f", peso)) kg")
                            .font(.title)
                            .bold()
                        
                        
                        HStack {
                            
                            Button(action: {peso -= 0.5}) {
                                ZStack{
                                    Circle().fill(.verdeOscuro)
                                    Image(systemName: "minus")
                                        .font(.title)
                                        .bold()
                                        .foregroundStyle(.white)
                                }
                            }
                            .padding(.horizontal, 5)
                            
                            Button(action: {peso += 0.5}) {
                                ZStack{
                                    Circle().fill(.verdeOscuro)
                                    Image(systemName: "plus")
                                        .font(.title)
                                        .bold()
                                        .foregroundStyle(.white)
                                }
                            }
                            .padding(.horizontal, 5)
                            
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.gris)
                    
                    
                    VStack {
                        
                        Text ("Edad:")
                            .font(.title)
                            .bold()
                            .padding(.top)
                        
                        Text ("\(edad) años")
                            .font(.title)
                            .bold()
                        
                        
                        HStack {
                            
                            Button(action: {edad -= 1}) {
                                ZStack{
                                    Circle().fill(.verdeOscuro)
                                    Image(systemName: "minus")
                                        .font(.title)
                                        .bold()
                                        .foregroundStyle(.white)
                                    
                                }
                            }
                            .padding(.horizontal, 5)
                            
                            
                            Button(action: {edad += 1}) {
                                ZStack{
                                    Circle().fill(.verdeOscuro)
                                    Image(systemName: "plus")
                                        .font(.title)
                                        .bold()
                                        .foregroundStyle(.white)
                                }
                            }
                            .padding(.horizontal, 5)
                            
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.gris)
                    
                    
                    
                }
                
                
                
                
                HStack {
                    VStack {
                        Text ("Nivel de actividad:")
                            .font(.title)
                            .bold()
                            .padding(.top)
                        
                        Picker("Selecciona actividad", selection: $actividad) {
                            ForEach(opcionesActividad, id: \.self) { opcion in
                                Text(opcion).tag(opcion)
                            }
                        }
                        .pickerStyle(.menu)
                        .padding(.bottom, 30)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.gris)
                    
                }
                
                VStack {
                   
                   
                    
                    NavigationLink(destination: ResultadoView()) {
                        Text("CALCULAR")
                            .font(.title)
                            .bold()
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.verdeOscuro)
                            .cornerRadius(5)
                    }
                    
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                
            }
        }
    }
    
}

struct ResultadoView: View {
    var body: some View {
        Text("Aquí se mostrará el resultado")
            .font(.title)
            .padding()
    }
}

#Preview {
    ContentView()
}
