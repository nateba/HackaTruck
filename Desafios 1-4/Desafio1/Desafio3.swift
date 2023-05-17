//
//  Desafio3.swift
//  Desafio1
//
//  Created by Student21 on 05/04/23.
//

import SwiftUI

struct Desafio3: View {
    @State private var name: String = ""
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Image("caminhao")
                .resizable()
                .opacity(0.4).blur(radius: 3)
                .frame(width: 1500,height: 900)
            
            ZStack {
                VStack {
                    Text("Bem vindo, \(name)")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.top, 60.0)
                    TextField("Quem vai encarar o campeão", text: $name)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Image("logo 1")
                        .resizable()
                        .frame(width: 300, height: 120)
                        .shadow(radius: 15)
                        
                    Image("truck")
                        .resizable()
                        .frame(width: 300, height: 140)
                        .shadow(radius: 15)
                    
                    Spacer()
                    
                    Button("Entrar") {
                                showingAlert = true
                            }
                            .alert(isPresented: $showingAlert) {
                                Alert(title: Text("ALERTA!"), message: Text("QUEM VAI ENCARAR O CAMPEÀO"), dismissButton: .default(Text("EU VOU!")))
                            }
                        .padding(.bottom, 40.0)
                        .font(.title2)
                } .padding()
            }
        }
    }
}

struct Desafio3_Previews: PreviewProvider {
    static var previews: some View {
        Desafio3()
    }
}
