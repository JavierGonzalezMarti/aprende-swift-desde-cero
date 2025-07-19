//
//  ContentView.swift
//  Metabolismo Basal
//
//  Ejemplo simple de una interfaz que calcula el BMR.
//

import SwiftUI

struct ContentView: View {

    @State private var esHombre: Bool = true
    @State private var altura: Double = 170
    @State private var peso: Int = 70
    @State private var edad: Int = 30
    @State private var nivelActividad: NivelActividad = .sedentario

    var bmr: Double {
        let base: Double
        if esHombre {
            base = 10 * Double(peso) + 6.25 * altura - 5 * Double(edad) + 5
        } else {
            base = 10 * Double(peso) + 6.25 * altura - 5 * Double(edad) - 161
        }
        return base * nivelActividad.factor
    }

    var body: some View {
        Form {
            Section(header: Text("Sexo")) {
                Toggle(esHombre ? "Hombre" : "Mujer", isOn: $esHombre)
                    .toggleStyle(.switch)
            }

            Section(header: Text("Talla")) {
                VStack {
                    Slider(value: $altura, in: 120...220, step: 1)
                    Text("\(Int(altura)) cm")
                }
            }

            Section(header: Text("Peso")) {
                Stepper(value: $peso, in: 30...200) {
                    Text("\(peso) kg")
                }
            }

            Section(header: Text("Edad")) {
                Stepper(value: $edad, in: 10...120) {
                    Text("\(edad) años")
                }
            }

            Section(header: Text("Actividad")) {
                Picker("Nivel", selection: $nivelActividad) {
                    ForEach(NivelActividad.allCases, id: \.self) { nivel in
                        Text(nivel.titulo).tag(nivel)
                    }
                }
                .pickerStyle(.menu)
            }

            Section(header: Text("BMR")) {
                Text(String(format: "%.0f kcal/día", bmr))
                    .font(.title)
                    .bold()
            }
        }
    }
}

enum NivelActividad: CaseIterable {
    case sedentario, ligero, moderado, activo, muyActivo

    var titulo: String {
        switch self {
        case .sedentario: return "Sedentario"
        case .ligero: return "Ligero"
        case .moderado: return "Moderado"
        case .activo: return "Activo"
        case .muyActivo: return "Muy activo"
        }
    }

    var factor: Double {
        switch self {
        case .sedentario: return 1.2
        case .ligero: return 1.375
        case .moderado: return 1.55
        case .activo: return 1.725
        case .muyActivo: return 1.9
        }
    }
}

#Preview {
    ContentView()
}

