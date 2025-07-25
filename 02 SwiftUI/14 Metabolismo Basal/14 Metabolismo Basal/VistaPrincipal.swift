//
//  ContentView.swift
//  14 Metabolismo Basal
//
//  Created by Javi on 24/7/25.
//

import SwiftUI



// ╔════════════════════════════════════════════════════════════════════╗
// ║ 🧠 VARIABLES Y LISTA                                               ║
// ╚════════════════════════════════════════════════════════════════════╝

struct VistaPrincipal: View {
    @State var sexo = "Hombre"
    @State var altura:Double = 168
    @State var peso:Double = 93.5
    @State var edad:Int = 39
    @State var actividad:String = "Sedentaria"
    
    let opcionesActividad = ["Sedentaria", "Ligera (1-3 días semana)", "Moderada (3-5 días semana)", "Intensa (6-7 días semana)", "Muy intensa (2 sesiones al día)"]
    
    
    
    
    
    
// ╔════════════════════════════════════════════════════════════════════╗
// ║ 📊 CÁLCULO DE LA TMB                                               ║
// ╚════════════════════════════════════════════════════════════════════╝
    
        func calcularTMB() -> Double {
         // Para hombres: TMB = (10 × peso) + (6.25 × altura) − (5 × edad) + 5
        // Para mujeres: TMB = (10 × peso) + (6.25 × altura) − (5 × edad) − 161
        let esHombre = sexo == "Hombre"
        let esMujer = sexo == "Mujer"
        var tmb: Double = 0
        if esHombre {
            tmb = (10 * peso) + (6.25 * altura) - (5 * Double(edad)) + 5
        } else if esMujer {
            tmb = (10 * peso) + (6.25 * altura) - (5 * Double(edad)) - 161
        } else {
            // Si no se selecciona sexo, devolvemos 0
            return 0
        }
        // Frecuencia de actividad
        let frecuenciaDeActividad: Double
        switch actividad {
        case "Sedentaria":
            frecuenciaDeActividad = 1.2
        case "Ligera (1-3 días semana)":
            frecuenciaDeActividad = 1.375
        case "Moderada (3-5 días semana)":
            frecuenciaDeActividad = 1.55
        case "Intensa (6-7 días semana)":
            frecuenciaDeActividad = 1.725
        case "Muy intensa (2 sesiones al día)":
            frecuenciaDeActividad = 1.9
        default:
            frecuenciaDeActividad = 1.0
        }
        return tmb * frecuenciaDeActividad
    }

// ╔════════════════════════════════════════════════════════════════════╗
// ║ 🧱 ESTRUCTURA DE LA VISTA PRINCIPAL                                ║
// ╚════════════════════════════════════════════════════════════════════╝
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("fondoOscuro").ignoresSafeArea()
                VStack {
                    
                    
                    
// ╔════════════════════════════════════════════════════════════════════╗
// ║ 👤 SECCIÓN: SELECCIÓN DE SEXO                                      ║
// ╚════════════════════════════════════════════════════════════════════╝
                    
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
                    
// ╔════════════════════════════════════════════════════════════════════╗
// ║ 📏 SECCIÓN: ALTURA                                                 ║
// ╚════════════════════════════════════════════════════════════════════╝
                    
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
                    
                    
                    
                    
// ╔════════════════════════════════════════════════════════════════════╗
// ║ ⚖️ SECCIÓN: PESO Y EDAD                                            ║
// ╚════════════════════════════════════════════════════════════════════╝
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
                    
                    
                    
                    
// ╔════════════════════════════════════════════════════════════════════╗
// ║ 🏃‍♂️ SECCIÓN: NIVEL DE ACTIVIDAD                                     ║
// ╚════════════════════════════════════════════════════════════════════╝
                    
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
                    
// ╔════════════════════════════════════════════════════════════════════╗
// ║ ✅ BOTÓN CALCULAR Y NAVIGATIONLINK                                 ║
// ╚════════════════════════════════════════════════════════════════════╝
                    VStack {
                        
                        
                        
                        NavigationLink(destination: VistaResultado(resultado: calcularTMB())) {
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
    
}




// ╔════════════════════════════════════════════════════════════════════╗
// ║ 📋 VISTA DE RESULTADO                                              ║
// ╚════════════════════════════════════════════════════════════════════╝

struct VistaResultado: View {
    var resultado: Double
    
    var body: some View {
        ZStack {
            Color("azulOscuro").ignoresSafeArea()
            VStack {
                Text("Resultado de la Tasa de Metabolismo Basal (TMB)")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("TMB: \(String(format: "%.2f", resultado))")
                    .font(.title)
                    .padding()
                
                
                Text("La tasa metabólica basal (TMB) es la cantidad mínima de energía que tu cuerpo necesita para realizar sus funciones vitales básicas en reposo, como respirar, hacer latir el corazón y mantener la temperatura corporal. Esencialmente, es la cantidad de calorías que quemas mientras estás inactivo.")
                    .font(.title3)
                    .padding()
                    .multilineTextAlignment(.leading)

            }
            .foregroundColor(.white)
        }
    }
}





// ╔════════════════════════════════════════════════════════════════════╗
// ║ 👁️ PREVISUALIZACIÓN                                                ║
// ╚════════════════════════════════════════════════════════════════════╝

#Preview {
    VistaPrincipal()
}
