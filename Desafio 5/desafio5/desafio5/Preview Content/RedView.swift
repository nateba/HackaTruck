//
//  RedView.swift
//  desafio5
//
//  Created by Student21 on 11/04/23.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        ZStack{
            Color(.red).ignoresSafeArea()
            Text("VERMELHO")
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
