//
//  HomeView.swift
//  desafio5
//
//  Created by Student21 on 11/04/23.
//

import SwiftUI

struct HomeView: View {
    
    private var imageList=[
        "tortoise.fill",
        "archivebox.fill",
        "trash.fill",
        "ladybug",
        "oilcan"
    ]
    var body: some View {
        ZStack{
            Color("verdin").ignoresSafeArea()
            ScrollView(showsIndicators: false){
                ForEach(imageList,id:\.self){
                    index in Image(systemName: "\(index)").font(.system(size:150)).padding()
                }
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
