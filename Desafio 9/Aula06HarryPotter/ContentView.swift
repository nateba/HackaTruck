//
//  ContentView.swift
//  Aula06HarryPotter
//
//  Created by Student24 on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    LinearGradient(colors: [.green, .black],
                                           startPoint: .top,
                                   endPoint: .bottom)
                    
                    AsyncImage(url: URL(string: "https://logos-world.net/wp-content/uploads/2022/02/Slytherin-Symbol.png")) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 400, height: 200)
                    .padding(.top, 20)
                } .frame(height: 300).ignoresSafeArea()
                    .shadow(radius: 15)
                

                ScrollView {
                    ForEach(viewModel.chars) { c in
                        NavigationLink(destination: CharDetalhe(char: c)) {
                            HStack {
                                AsyncImage(url: URL(string: c.image!)) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 70, height: 70)
                                } placeholder: {
                                    ProgressView()
                                }
                                
                                .clipShape(Circle())
                                
                                Text(c.name!)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                                
                                Spacer()
                            } .padding(.leading, 20)
                        }
                    }
                } .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .leading
                )
                .padding(.top, -50)
            }
        } .onAppear() {
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
