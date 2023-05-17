//
//  Desafio2.swift
//  Desafio1
//
//  Created by Student21 on 05/04/23.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
        VStack{
            Image("caminhao").resizable().scaledToFit()
            Spacer()
            ZStack{
                
                Image("caminhao").resizable().scaledToFit().clipShape(Circle()).blur(radius: 1.0)
                Text("HackTruck").font(.title).bold().foregroundColor(.blue).frame(width:200, height:200,alignment:.top)
                
                
            }
            
            
            Spacer()
            HStack{
                Text("Maker").font(.title).foregroundColor(.yellow).bold()
                Text("Space").font(.title).foregroundColor(.red).bold()

            }.frame(width: 200,height: 100).background(.black)
            
        }
        
    }
}

struct Desafio2_Previews: PreviewProvider {
    static var previews: some View {
        Desafio2()
    }
}
