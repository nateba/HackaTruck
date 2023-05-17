//
//  ContentView.swift
//  Desafio1
//
//  Created by Student21 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao").resizable().scaledToFit()
            Text("HackTruck").font(.largeTitle).foregroundColor(.blue).bold()
            HStack{
                Text("Maker").font(.title).foregroundColor(.yellow).bold()
                Text("Space").font(.title).foregroundColor(.red).bold()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
