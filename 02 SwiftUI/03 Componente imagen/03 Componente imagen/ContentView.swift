//
//  ContentView.swift
//  03 Componente imagen
//
//  Created by Javi on 16/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {    //Simplemente conteniendo el VStack en un ScrollView se consigue tener una vista con Scroll activado.
            VStack(alignment: .leading, spacing: 20) {
                
                // 1. Imagen redimensionada
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 200, height: 200) //Redimensionar
                        .padding(.trailing, 16) // Espacio a la derecha de la imagen
                    Text("1. Redimensionada")
                }
                
                // 2. Imagen con borde
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .border(Color.red, width: 3) //Añadir borde
                        .padding(.trailing, 16)
                    Text("2. Con borde rojo")
                }
                
                // 3. Imagen con sombra
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10) //Añadir sombra
                        .padding(.trailing, 16)
                    Text("3. Con sombra")
                }
                
                // 4. Imagen circular
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaleEffect(1.3) // Aumentar la escala dentro del marco
                        .clipShape(Circle()) // Crear una máscara en forma de círculo
                        .padding(.trailing, 16)
                    Text("4. Forma circular")
                }
                
                // 5. Imagen con opacidad
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .opacity(0.5) //Opacidad
                        .padding(.trailing, 16)
                    Text("5. Opacidad 50%")
                }
                
                // 6. Imagen rotada
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .rotationEffect(.degrees(45)) //Rotar imagen
                        .padding(.trailing, 16)
                    Text("6. Rotada 45º")
                }
                
                // 7. Imagen con escala personalizada
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaleEffect(x: 1.5, y: 0.8) // Escala horizontal y vertical diferente
                        .padding(.trailing, 16)
                    Text("7. Escala personalizada")
                }
                
                // 8. Imagen con esquina redondeada
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaleEffect(1.5)
                        .cornerRadius(20) // Bordes redondeados
                        .padding(.trailing, 16)
                    Text("8. Esquinas redondeadas")
                }
                
                // 9. Imagen desaturada (blanco y negro)
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .saturation(0) // Elimina el color
                        .padding(.trailing, 16)
                    Text("9. Blanco y negro")
                }
                
                // 10. Imagen invertida horizontalmente
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaleEffect(x: -1, y: 1) // Invierte horizontalmente
                        .padding(.trailing, 16)
                    Text("10. Invertida horizontal")
                }
            
                // 11. Imagen con giro 3D en eje Y
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .rotation3DEffect(.degrees(45), axis: (x: 0, y: 1, z: 0)) // Gira en 3D
                        .padding(.trailing, 16)
                    Text("11. Giro 3D eje Y")
                }

                // 12. Imagen con transparencia y sombra
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .opacity(0.3)
                        .shadow(radius: 5)
                        .padding(.trailing, 16)
                    Text("12. Transparente + sombra")
                }

                // 13. Imagen rotada en eje X
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0)) // Gira en eje X
                        .padding(.trailing, 16)
                    Text("13. Giro 3D eje X")
                }

                // 14. Imagen con alto contraste
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .contrast(3.0) // Aumenta el contraste
                        .padding(.trailing, 16)
                    Text("14. Alto contraste")
                }

                // 15. Imagen estirada horizontalmente
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaleEffect(x: 1.5, y: 1.0)
                        .padding(.trailing, 16)
                    Text("15. Estirada horizontal")
                }

                // 16. Imagen reflejada verticalmente
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaleEffect(x: 1, y: -1)
                        .padding(.trailing, 16)
                    Text("16. Reflejo vertical")
                }

            // 17. Imagen con iluminación multiplicada (blend mode)
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .blendMode(.multiply) // Mezcla de capas con modo multiplicar
                        .background(Color.green) // Fondo para mostrar el efecto
                        .padding(.trailing, 16)
                    Text("17. Modo mezcla multiply")
                }

                // 18. Imagen borrosa
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .blur(radius: 5) // Aplica desenfoque
                        .padding(.trailing, 16)
                    Text("18. Borrosa")
                }

                // 19. Imagen con brillo aumentado
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .brightness(0.2) // Aumenta el brillo
                        .padding(.trailing, 16)
                    Text("19. Brillo aumentado")
                }

                // 20. Imagen con mezcla de color
                HStack {
                    Image("swiftlogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .colorMultiply(.blue) // Mezcla de color
                        .padding(.trailing, 16)
                    Text("20. Mezcla azul")
                }
            }
            .padding()
        } // Añade espacio alrededor del contenido
    }
}

#Preview {
    ContentView()
}
