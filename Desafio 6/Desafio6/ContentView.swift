//
//  ContentView.swift
//  Desafio6
//
//  Created by Student21 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    var musicas = [
        Musica(id: 1,  imagem: "rapNaruto", nome: "Rap do Naruto", cantor: "7minutoz", infos: "ellipsis"),
        Musica(id: 2, imagem: "rapZoro", nome: "Rap do Zoro", cantor: "7minutoz", infos: "ellipsis"),
        Musica(id: 3, imagem: "rapSanji", nome: "Rap do Sanji", cantor: "7minutoz", infos: "ellipsis"),
        Musica(id: 4, imagem: "rapMukeka", nome: "Rap do Mukeko", cantor: "MukekaDelas", infos: "ellipsis"),
        Musica(id: 5, imagem: "rapZoro", nome: "Rap do Zoro", cantor: "7minutoz", infos: "ellipsis"),
        Musica(id: 6, imagem: "rapSanji", nome: "Rap do Sanji", cantor: "7minutoz", infos: "ellipsis")
       
    ]
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.red,.black], startPoint: .top, endPoint: .center).ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        Image("coringa").resizable().frame(width: 260,height:260)
                        Text("Hack TM").foregroundColor(.white).font(.largeTitle).bold().frame(
                            minWidth:0,
                            maxWidth: .infinity,
                            alignment: .leading)
                        HStack{
                            Image("coringa").resizable().frame(width: 20,height:20)
                            Text("HackaSong").foregroundColor(.white).bold().frame(
                                minWidth:0,
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                        }.padding( .bottom, 30).padding(.top, -10)
                        
                        ForEach(musicas) { musica in
                            NavigationLink(destination: MusicaDetalhe(m : musica)){
                                HStack{
                                    Image(musica.imagem).resizable().frame(width:50, height: 50)
                                    VStack{
                                        Text(musica.nome).foregroundColor(.white).bold()
                                        Text(musica.cantor).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image(systemName: musica.infos).font(.system(size:20)).padding().foregroundColor(.white)
                                    
                                }
                            }
                            
                        }
                        Text("Veja outras playlists ").foregroundColor(.white).font(.largeTitle)
                        ScrollView(.horizontal){
                            
                            HStack{
                                AsyncImage(url: URL(string: "https://yt3.googleusercontent.com/ytc/AGIKgqOw7izpE7gn2MCdQ_hVy3jJmbCQaMlzY3DIcd4h=s900-c-k-c0x00ffffff-no-rj")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 150, height: 150)
                                AsyncImage(url: URL(string: "https://portalpopline.com.br/wp-content/uploads/2021/08/Spotify-pop-up-playlist-Pop-lider-America-Latina-758x758.jpg")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 150, height: 150)
                                AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQewZURRIGxwPcjzTi6uItymdgOC5hOHQao2g&usqp=CAU")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 150, height: 150)
                            }
                        }
                        
                        
                    }.padding(.top, 20)
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/* var Musicas = [
 Musica(imagem: "rapNaruto", nome: "Rap do Naruto", cantor: "7minutoz", infos: "ellipsis"),
 Musica(imagem: "rapZoro", nome: "Rap do Zoro", cantor: "7minutoz", infos: "ellipsis")
] */

/*  ScrollView(showsIndicators: false){
 for (imagem, nome, cantor, infos) in Musicas {
     
 }
}*/
