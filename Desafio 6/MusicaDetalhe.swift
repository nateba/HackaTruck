//
//  MusicaDetalhe.swift
//  Desafio6
//
//  Created by Student21 on 12/04/23.
//

import SwiftUI

struct MusicaDetalhe: View {
    var m : Musica
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red,.black], startPoint: .top, endPoint: .center).ignoresSafeArea()
            HStack{
                VStack{
                    Image(m.imagem).resizable().frame(width:300, height: 300)
                    VStack{
                        Text(m.nome).foregroundColor(.white).bold().font(.largeTitle)
                        Text(m.cantor).foregroundColor(.white).font(.title)
                        HStack{
                            Image(systemName: "shuffle").foregroundColor(.white).padding(.horizontal, 10).font(.system(size:40))
                            Image(systemName: "backward.end.fill").foregroundColor(.white).padding(.horizontal, 10).font(.system(size:40))
                            Image(systemName: "play.fill").foregroundColor(.white).padding(.horizontal, 10).font(.system(size:60))
                            Image(systemName: "forward.end.fill").foregroundColor(.white).padding(.horizontal, 10).font(.system(size:40))
                            Image(systemName: "repeat").foregroundColor(.white).padding(.horizontal, 10).font(.system(size:40))
                        }.padding(.top, 40)
                    }
                    
                }
                
                
                
            }
        }}
}

struct MusicaDetalhe_Previews: PreviewProvider {
    static var previews: some View {
        var mTeste = Musica(id: -1, imagem: "", nome: "", cantor: "", infos: "")
        MusicaDetalhe(m:mTeste)
    }
}
