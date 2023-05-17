//
//  Desafio4.swift
//  Desafio1
//
//  Created by Student21 on 10/04/23.
//

import SwiftUI
struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 32, green: 0, blue: 4))
            .foregroundColor(.black)
            .clipShape(Capsule()).shadow(color: .black, radius: 2.5)
    }
}

struct Desafio4: View {
    @State private var peso = 0.00
    @State private var altura = 0.00
    @State private var calculo = false
    @State private var corzinha = ""
    @State private var name: String = ""
    
    var body: some View {
        var imc = peso/(altura*altura)
        ZStack{
            Image("caminhao")
                .resizable()
                .ignoresSafeArea().opacity(0.5)
            Color("\(corzinha)").ignoresSafeArea()
            
            VStack  (spacing:25){
                Text("Calculadora de IMC").bold().font(.largeTitle).shadow(color: .pink, radius: 2.5)
                TextField("Entre seu peso", value: $peso, format:.number).keyboardType(.decimalPad).textFieldStyle(.roundedBorder).frame(width: 300).shadow(radius: 2.5).foregroundColor(.gray)
                    .multilineTextAlignment(.center).shadow(color: .pink, radius: 2.5)
           
                TextField("Entre sua altura", value: $altura, format:.number).keyboardType(.decimalPad).textFieldStyle(.roundedBorder).frame(width: 300).shadow(radius: 2.5).foregroundColor(.gray)                    .multilineTextAlignment(.center).shadow(color: .pink, radius: 2.5)
                
                Button("Calcular"){
                    
                    
                    if imc<18.5{
                        corzinha="baixo"
                        name="Baixo Peso"
                    }else if imc>18.5&&imc<25.00{
                        corzinha="normal"
                        name="Normal"
                    }else if imc>25.5&&imc<30.00{
                        corzinha="sobrepeso"
                        name="Sobre Peso"
                    } else{
                        corzinha="obesidade"
                        name="Obesidade"
                    }
                    
                }.buttonStyle(BlueButton())
                Spacer()
                Text("\(name)").font(.largeTitle)
                Spacer()
               
                Image("tabela-IMC").resizable().scaledToFit()
                
               
            }
        }
        
    }
    
}


struct Desafio4_Previews: PreviewProvider {
    static var previews: some View {
        Desafio4()
    }
}
