//
//  CharDetalhe.swift
//  Aula06HarryPotter
//
//  Created by Student24 on 14/04/23.
//

import SwiftUI

struct CharDetalhe: View {
    
    var char : HaPo
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .black],
                                   startPoint: .top,
                           endPoint: .bottom)
            
            VStack {
                AsyncImage(url: URL(string: char.image!)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 300)
                .cornerRadius(30)
                .shadow(radius: 15)
                
                Text(char.name!)
                    .font(.title)
                    .fontWeight(.bold)
                Text(char.species!)
                    .font(.title3)
                Text(char.gender!)
                    .font(.title3)
            } .foregroundColor(.white)
        }.ignoresSafeArea()
    }
}

struct CharDetalhe_Previews: PreviewProvider {
    static var previews: some View {
        var teste = HaPo(id: "idTeste", name: "nomeTeste", species: "especie", gender: "genero", wand: (Wand(wood: "")), image: "https://ik.imagekit.io/hpapi/draco.jpg")
        CharDetalhe(char: teste)
    }
}
