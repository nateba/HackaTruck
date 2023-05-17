//
//  navigations.swift
//  desafio5
//
//  Created by Student21 on 11/04/23.
//

import SwiftUI



struct navigations: View {
    var bananinha = Bolota(nome:"jose",sobrenome:"macaco")
    var body: some View {
            NavigationStack{
                VStack(spacing:30){
                    NavigationLink(destination: HomeView()) {
                        Text("Modo1").foregroundColor(.red).font(.largeTitle)
                       }
                    NavigationLink(destination: BlueView(a:bananinha)) {
                           Text("Modo2").font(.largeTitle)
                       }
                    NavigationLink(destination: YellowView()) {
                           Text("Modo3").font(.largeTitle).foregroundColor(.green)
                       }
                }
            }
    }
}

struct navigations_Previews: PreviewProvider {
    static var previews: some View {
        navigations()
    }
}




