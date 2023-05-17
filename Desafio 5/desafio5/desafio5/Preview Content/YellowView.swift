//
//  YellowView.swift
//  desafio5
//
//  Created by Student21 on 11/04/23.
//

import SwiftUI

struct YellowView: View {
   @State private var showingSheet = false
    var body: some View {
        ZStack{
            Color(.yellow).ignoresSafeArea()
            VStack{
                Text("Amarelin")
                Button("VERMELHO") {
                           showingSheet.toggle()
                }.foregroundColor(.red)
                .sheet(isPresented: $showingSheet) {
                          RedView()
                       }
            }
            
           
        }
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView()
    }
}
