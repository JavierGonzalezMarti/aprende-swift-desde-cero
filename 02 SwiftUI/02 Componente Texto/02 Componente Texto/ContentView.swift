//
//  ContentView.swift
//  02 Componente Texto
//
//  Created by Javi on 16/7/25.
//

// Concepto: Componente Text en SwiftUI con 20 atributos diferentes
// Uso: El componente Text permite mostrar y personalizar texto usando una gran variedad de modificadores.

// Ejemplo con 20 atributos distintos del componente Text
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // 1. Color del texto
            Text("1. Color azul")
                .foregroundColor(.blue)
            // 2. Tamaño de fuente
            Text("2. Fuente grande")
                .font(.largeTitle)
            // 3. Negrita
            Text("3. Negrita")
                .bold()
            // 4. Cursiva
            Text("4. Cursiva")
                .italic()
            // 5. Subrayado
            Text("5. Subrayado")
                .underline()
            // 6. Tachado
            Text("6. Tachado")
                .strikethrough()
            // 7. Espaciado entre letras
            Text("7. Espaciado letras")
                .kerning(5)
            // 8. Número de líneas máximas
            Text("8. Solo una línea, el resto se corta si es muy largo para la pantalla.")
                .lineLimit(1)
            // 9. Alineación de texto
            Text("9. Alineado a la derecha\ny con salto de línea")
                .multilineTextAlignment(.trailing)
                .frame(maxWidth: .infinity, alignment: .trailing)
               // .background(Color.yellow.opacity(0.3)) // solo para ver el área del texto
            // 10. Opacidad
            Text("10. Texto con opacidad baja")
                .opacity(0.3)
            // 11. Espaciado entre líneas
            Text("11. Línea 1\nLínea 2 (espaciado aumentado)")
                .lineSpacing(15)
            // 12. Subrayado con color
            Text("12. Subrayado en rojo")
                .underline(true, color: .red)
            // 13. Tachado con color
            Text("13. Tachado en verde")
                .strikethrough(true, color: .green)
            // 14. Fuente personalizada
            Text("14. Fuente Courier New")
                .font(.custom("Courier New", size: 22))
            // 15. Letra minúscula
            Text("15. TODO EN MINÚSCULAS")
                .textCase(.lowercase)
            // 16. Letra mayúscula
            Text("16. todo en mayúsculas")
                .textCase(.uppercase)
            // 17. Escalado de fuente (accesibilidad)
            Text("17. Escalado máximo 0.5x (reduce si no cabe)")
                .minimumScaleFactor(0.5)
                .font(.title)
            // 18. Espaciado antes del párrafo (padding superior)
            Text("18. Espacio arriba de este texto")
                .padding(.top, 30)
            // 19. Ocultar el texto para accesibilidad
            Text("19. Oculto para accesibilidad")
                .accessibilityHidden(true)
            // 20. Sombra
            Text("20. Texto con sombra")
                .shadow(color: .gray, radius: 3, x: 2, y: 2)
        }
        .padding()
    }
}

// Para ver el resultado, usa esta vista como vista principal de tu app SwiftUI.

#Preview {
    ContentView()
}
