//
//  BlueView.swift
//  desafio5
//
//  Created by Student21 on 11/04/23.
//

import SwiftUI

struct BlueView: View {
    var a:Bolota
    var body: some View {
        
        ZStack{
            Color(.blue).ignoresSafeArea()
            VStack{
                Text("oi \(a.nome)")
                NavigationLink(destination: RedView()){
                    Text("CLICA EM MIM")
                }
            }
            
        }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        var teste = Bolota(nome: "", sobrenome: "")
        BlueView(a:teste)
    }
}



