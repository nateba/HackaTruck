//
//  ContentView.swift
//  desafio5
//
//  Created by Student21 on 11/04/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        var bananinha = Bolota(nome: "jorge", sobrenome: "michael")
        ZStack{
            TabView{
                HomeView()
                    .tabItem{
                        Text("Home")
                        Image(systemName: "house")
                    }
                
                BlueView(a:bananinha)
                     .tabItem{
                        Text("BLU")
                        Image(systemName: "figure.archery")
                    }
                RedView()
                    .tabItem{
                        Text("Red")
                        Image(systemName: "umbrella.fill")
                    }
                YellowView()
                    .tabItem{
                        Text("Yellow")
                        Image(systemName: "tennis.racket")
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
